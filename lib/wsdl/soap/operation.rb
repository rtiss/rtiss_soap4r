# WSDL4R - WSDL SOAP operation definition.
# Copyright (C) 2000-2007  NAKAMURA, Hiroshi <nahi@ruby-lang.org>.

# This program is copyrighted free software by NAKAMURA, Hiroshi.  You can
# redistribute it and/or modify it under the same terms of Ruby's license;
# either the dual license version in 2003, or any later version.


require 'wsdl/info'


module WSDL
module SOAP


class Operation < Info
  class ParamInfo
    attr_reader :style
    attr_reader :op_name
    attr_reader :optype_name
    attr_reader :encodingstyle
    attr_reader :headerparts
    attr_reader :bodyparts
    attr_reader :faultpart
    attr_reader :soapaction
    
    def initialize(style, use, encodingstyle, op_name, optype_name,
        headerparts, bodyparts, faultpart, soapaction)
      @style = style
      @use = use
      @encodingstyle = encodingstyle
      @op_name = op_name
      @optype_name = optype_name
      @headerparts = headerparts
      @bodyparts = bodyparts
      @faultpart = faultpart
      @soapaction = soapaction
    end
  end

  attr_reader :soapaction
  attr_reader :style

  def initialize
    super
    @soapaction = nil
    @style = nil
  end

  def parse_element(element)
    nil
  end

  def parse_attr(attr, value)
    case attr
    when StyleAttrName
      if ["document", "rpc"].include?(value.source)
	@style = value.source.intern
      else
	raise Parser::AttributeConstraintError.new(
          "Unexpected value #{ value }.")
      end
    when SOAPActionAttrName
      @soapaction = value.source
    else
      nil
    end
  end

  def operation_style
    return @style if @style
    if parent_binding.soapbinding
      return parent_binding.soapbinding.style
    end
    nil
  end

private

  def parent_binding
    parent.parent
  end

  def create_param_info(name_info, param)
    op_style = operation_style
    op_use = param.soapbody_use
    op_encodingstyle = param.soapbody_encodingstyle
    op_name = name_info.op_name
    optype_name = name_info.optype_name
    soapheader = param.soapheader
    headerparts = soapheader.collect { |item| item.find_part }
    soapbody = param.soapbody
    if soapbody.namespace
      op_name = XSD::QName.new(soapbody.namespace, op_name.name)
    end
    if soapbody.parts
      target = soapbody.parts.split(/\s+/)
      bodyparts = name_info.parts.find_all { |part|
	target.include?(part.name)
      }
    else
      bodyparts = name_info.parts
    end
    faultpart = nil
    ParamInfo.new(op_style, op_use, op_encodingstyle, op_name, optype_name,
      headerparts, bodyparts, faultpart, parent.soapaction)
  end
end


end
end
