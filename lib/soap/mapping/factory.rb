# SOAP4R - Mapping factory.
# Copyright (C) 2000-2007  NAKAMURA, Hiroshi <nahi@ruby-lang.org>.

# This program is copyrighted free software by NAKAMURA, Hiroshi.  You can
# redistribute it and/or modify it under the same terms of Ruby's license;
# either the dual license version in 2003, or any later version.


module SOAP
module Mapping


class Factory
  include TraverseSupport

  def initialize
    # nothing to do
  end

  def obj2soap(soap_class, obj, info, map)
    raise NotImplementError.new
    # return soap_obj
  end

  def soap2obj(obj_class, node, info, map)
    raise NotImplementError.new
    # return convert_succeeded_or_not, obj
  end

  def setiv2obj(obj, node, map)
    return if node.nil?
    if obj.is_a?(Array)
      setiv2ary(obj, node, map)
    else
      setiv2struct(obj, node, map)
    end
  end

  def setiv2soap(node, obj, map)
    if obj.class.class_variables.include?(:@@schema_element)
      setdefinediv2soap(node, obj, map)
    else
      # should we sort instance_variables? how?
      obj.instance_variables.each do |var|
        name = var.to_s.sub(/^@/, '').to_sym
        elename = Mapping.name2elename(name)
        node.add(elename,
          Mapping._obj2soap(obj.instance_variable_get(var), map))
      end
    end
  end

private

  def setdefinediv2soap(ele, obj, map)
    definition = Mapping.schema_definition_classdef(obj.class)
    definition&.elements&.each do |eledef|
      child = Mapping.get_attribute(obj, eledef.varname)
      # extract method
      if child.nil?
        value = SOAPNil.new
      elsif child.is_a?(XSD::NSDBase)
        value = child
      else
        klass = Mapping.class_from_name(eledef.type)
        if klass && klass.include?(::SOAP::SOAPBasetype)
          value = klass.new(child)
        else
          # should check klass matches an actual object?
          value = Mapping._obj2soap(child, map)
        end
      end
      ele.add(eledef.elename.name, value)
    end
  end

  def setiv2ary(obj, node, map)
    node.each do |name, value|
      Array.instance_method(:<<).bind(obj).call(Mapping._soap2obj(value, map))
    end
  end

  def setiv2struct(obj, node, map)
    vars = {}
    node.each do |name, value|
      vars[Mapping.elename2name(name)] = Mapping._soap2obj(value, map)
    end
    Mapping.set_attributes(obj, vars)
  end

  def anonymous_class?(obj)
    name = obj.class.name
    name.nil? or name.empty?    # 1.8 returns ""
  end
end

class StringFactory_ < Factory
  def initialize(allow_original_mapping = false)
    super()
    @allow_original_mapping = allow_original_mapping
  end

  def obj2soap(soap_class, obj, info, map)
    if !@allow_original_mapping and !obj.instance_variables.empty?
      return nil
    end
    begin
      encoded = XSD::Charset.encoding_conv(obj, Mapping.external_ces,
        XSD::Charset.encoding)
      soap_obj = soap_class.new(encoded)
    rescue XSD::ValueSpaceError
      return nil
    end
    mark_marshalled_obj(obj, soap_obj)
    soap_obj
  end

  def soap2obj(obj_class, node, info, map)
    obj = Mapping.create_empty_object(obj_class)
    decoded = XSD::Charset.encoding_conv(node.data, XSD::Charset.encoding,
      Mapping.external_ces)
    obj.replace(decoded)
    mark_unmarshalled_obj(node, obj)
    return true, obj
  end
end

class FixnumFactory_ < Factory
  def obj2soap(soap_class, obj, info, map)
    soap_obj = nil
    begin
      soap_obj = soap_class.new(obj)
    rescue XSD::ValueSpaceError
      return nil
    end
    soap_obj
  end

  def soap2obj(obj_class, node, info, map)
    obj = node.data
    return true, obj
  end
end

class BasetypeFactory_ < Factory
  def initialize(allow_original_mapping = false)
    super()
    @allow_original_mapping = allow_original_mapping
  end

  def obj2soap(soap_class, obj, info, map)
    if !@allow_original_mapping and !obj.instance_variables.empty?
      return nil
    end
    soap_obj = nil
    begin
      soap_obj = soap_class.new(obj)
    rescue XSD::ValueSpaceError
      return nil
    end
    if @allow_original_mapping
      # Basetype except String should not be multiref-ed in SOAP/1.1.
      mark_marshalled_obj(obj, soap_obj)
    end
    soap_obj
  end

  def soap2obj(obj_class, node, info, map)
    obj = node.data
    mark_unmarshalled_obj(node, obj)
    return true, obj
  end
end

class DateTimeFactory_ < Factory
  def initialize(allow_original_mapping = false)
    super()
    @allow_original_mapping = allow_original_mapping
  end

  def obj2soap(soap_class, obj, info, map)
    if !@allow_original_mapping and
       Time === obj and !obj.instance_variables.empty?
      return nil
    end

    if obj.is_a?(DateTime) || obj.is_a?(Time)
      formatted_obj = format_datetime(obj)
      begin
        soap_obj = soap_class.new(formatted_obj)
      rescue XSD::ValueSpaceError
        return nil
      end
      mark_marshalled_obj(obj, soap_obj)
    else
      begin
        soap_obj = soap_class.new(obj)
      rescue XSD::ValueSpaceError
        return nil
      end
      mark_marshalled_obj(obj, soap_obj)
    end

    soap_obj
  end

  def soap2obj(obj_class, node, info, map)
    if node.respond_to?(:to_obj)
      obj = node.to_obj(obj_class)
      return false if obj.nil?
      mark_unmarshalled_obj(node, obj)
      [true, obj]
    else
      false
    end
  end

  private

  def format_datetime(obj)
    if obj.is_a?(DateTime)
      formatted = obj.strftime('%Y-%m-%dT%H:%M:%S.%3N%z')
      if formatted[-5..-1] =~ /[+-]\d{4}/
        formatted = formatted[0..-3] + ':' + formatted[-2..-1]
      end
      return formatted
    elsif obj.is_a?(Time)
      formatted = obj.strftime('%Y-%m-%dT%H:%M:%S.%3N%z')
      if formatted[-5..-1] =~ /[+-]\d{4}/
        formatted = formatted[0..-3] + ':' + formatted[-2..-1]
      end
      return formatted
    end
    obj
  end
end

class Base64Factory_ < Factory
  def obj2soap(soap_class, obj, info, map)
    return nil unless obj.instance_variables.empty?
    soap_obj = soap_class.new(obj)
    mark_marshalled_obj(obj, soap_obj) if soap_obj
    soap_obj
  end

  def soap2obj(obj_class, node, info, map)
    obj = node.string
    mark_unmarshalled_obj(node, obj)
    return true, obj
  end
end

class URIFactory_ < Factory
  def obj2soap(soap_class, obj, info, map)
    soap_obj = soap_class.new(obj)
    mark_marshalled_obj(obj, soap_obj) if soap_obj
    soap_obj
  end

  def soap2obj(obj_class, node, info, map)
    obj = node.data
    mark_unmarshalled_obj(node, obj)
    return true, obj
  end
end

class ArrayFactory_ < Factory
  def initialize(allow_original_mapping = false)
    super()
    @allow_original_mapping = allow_original_mapping
  end

  # [[1], [2]] is converted to Array of Array, not 2-D Array.
  # To create M-D Array, you must call Mapping.ary2md.
  def obj2soap(soap_class, obj, info, map)
    if !@allow_original_mapping and !obj.instance_variables.empty?
      return nil
    end
    arytype = Mapping.obj2element(obj)
    if arytype.name
      arytype.namespace ||= RubyTypeNamespace
    else
      arytype = XSD::AnyTypeName
    end
    soap_obj = SOAPArray.new(ValueArrayName, 1, arytype)
    mark_marshalled_obj(obj, soap_obj)
    obj.each do |item|
      soap_obj.add(Mapping._obj2soap(item, map))
    end
    soap_obj
  end

  def soap2obj(obj_class, node, info, map)
    obj = Mapping.create_empty_object(obj_class)
    mark_unmarshalled_obj(node, obj)
    node.soap2array(obj) do |elem|
      elem ? Mapping._soap2obj(elem, map) : nil
    end
    return true, obj
  end
end

class TypedArrayFactory_ < Factory
  def initialize(allow_original_mapping = false)
    super()
    @allow_original_mapping = allow_original_mapping
  end

  def obj2soap(soap_class, obj, info, map)
    if !@allow_original_mapping and !obj.instance_variables.empty?
      return nil
    end
    arytype = info[:type] || info[0]
    soap_obj = SOAPArray.new(ValueArrayName, 1, arytype)
    mark_marshalled_obj(obj, soap_obj)
    obj.each do |var|
      soap_obj.add(Mapping._obj2soap(var, map))
    end
    soap_obj
  end

  def soap2obj(obj_class, node, info, map)
    if node.rank > 1
      return false
    end
    arytype = info[:type] || info[0]
    unless node.arytype == arytype
      return false
    end
    obj = Mapping.create_empty_object(obj_class)
    mark_unmarshalled_obj(node, obj)
    node.soap2array(obj) do |elem|
      elem ? Mapping._soap2obj(elem, map) : nil
    end
    return true, obj
  end
end

class TypedStructFactory_ < Factory
  def obj2soap(soap_class, obj, info, map)
    type = info[:type] || info[0]
    soap_obj = soap_class.new(type)
    mark_marshalled_obj(obj, soap_obj)
    if obj.class <= SOAP::Marshallable
      setiv2soap(soap_obj, obj, map)
    else
      # allow to serialize an instance of unmarked class
      setiv2soap(soap_obj, obj, map)
    end
    soap_obj
  end

  def soap2obj(obj_class, node, info, map)
    type = info[:type] || info[0]
    unless node.type == type
      return false
    end
    obj = Mapping.create_empty_object(obj_class)
    mark_unmarshalled_obj(node, obj)
    setiv2obj(obj, node, map)
    return true, obj
  end
end

MapQName = XSD::QName.new(ApacheSOAPTypeNamespace, 'Map')
class HashFactory_ < Factory
  def initialize(allow_original_mapping = false)
    super()
    @allow_original_mapping = allow_original_mapping
  end

  def obj2soap(soap_class, obj, info, map)
    if !@allow_original_mapping and !obj.instance_variables.empty?
      return nil
    end
    if !obj.default.nil? or
	(obj.respond_to?(:default_proc) and obj.default_proc)
      return nil
    end
    soap_obj = SOAPStruct.new(MapQName)
    mark_marshalled_obj(obj, soap_obj)
    obj.each do |key, value|
      elem = SOAPStruct.new
      elem.add("key", Mapping._obj2soap(key, map))
      elem.add("value", Mapping._obj2soap(value, map))
      # ApacheAxis allows only 'item' here.
      soap_obj.add("item", elem)
    end
    soap_obj
  end

  def soap2obj(obj_class, node, info, map)
    unless node.type == MapQName
      return false
    end
    if node.class == SOAPStruct and node.key?('default')
      return false
    end
    obj = Mapping.create_empty_object(obj_class)
    mark_unmarshalled_obj(node, obj)
    if node.class == SOAPStruct
      node.each do |key, value|
	obj[Mapping._soap2obj(value['key'], map)] =
	  Mapping._soap2obj(value['value'], map)
      end
    else
      node.each do |value|
	obj[Mapping._soap2obj(value['key'], map)] =
	  Mapping._soap2obj(value['value'], map)
      end
    end
    return true, obj
  end
end


end
end
