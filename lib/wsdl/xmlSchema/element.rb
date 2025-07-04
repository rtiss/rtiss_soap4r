# WSDL4R - XMLSchema element definition.
# Copyright (C) 2000-2007  NAKAMURA, Hiroshi <nahi@ruby-lang.org>.

# This program is copyrighted free software by NAKAMURA, Hiroshi.  You can
# redistribute it and/or modify it under the same terms of Ruby's license;
# either the dual license version in 2003, or any later version.


require 'wsdl/info'
require 'wsdl/xmlSchema/ref'


module WSDL
module XMLSchema


class Element < Info
  include Ref

  attr_writer :name	# required
  attr_writer :form
  attr_writer :type
  attr_writer :local_simpletype
  attr_writer :local_complextype
  attr_writer :constraint
  attr_accessor :maxoccurs
  attr_accessor :minoccurs
  attr_writer :nillable

  attr_reader_ref :name
  attr_reader_ref :form
  attr_reader_ref :type
  attr_reader_ref :local_simpletype
  attr_reader_ref :local_complextype
  attr_reader_ref :constraint
  attr_reader_ref :nillable
  attr_reader_ref :default
  attr_reader_ref :abstract

  def initialize(name = nil, type = nil)
    super()
    @name = name
    @form = nil
    @type = type
    @local_simpletype = @local_complextype = nil
    @constraint = nil
    @maxoccurs = 1
    @minoccurs = 1
    @nillable = nil
    @default = nil
    @abstract = false
    @ref = nil
    @refelement = nil
  end

  def empty?
    !(local_simpletype || local_complextype || constraint || type)
  end

  def targetnamespace
    parent.targetnamespace
  end

  def elementformdefault
    parent.elementformdefault
  end

  def elementform
    self.form.nil? ? parent.elementformdefault : self.form
  end

  def parse_element(element)
    case element
    when SimpleTypeName
      @local_simpletype = SimpleType.new
      @local_simpletype
    when ComplexTypeName
      @type = nil
      @local_complextype = ComplexType.new
      @local_complextype
    when UniqueName
      @constraint = Unique.new
      @constraint
    else
      nil
    end
  end

  def parse_attr(attr, value)
    case attr
    when NameAttrName
      # namespace may be nil
      if directelement? or elementform == 'qualified'
        @name = XSD::QName.new(targetnamespace, value.source)
      else
        @name = XSD::QName.new(nil, value.source)
      end
    when FormAttrName
      @form = value.source
      if @form != 'qualified' and @name && @name.namespace
        @name = XSD::QName.new(nil, @name.name)
      end
      @form
    when TypeAttrName
      @type = value
    when RefAttrName
      @ref = value
    when MaxOccursAttrName
      if parent.is_a?(All)
	if value.source != '1'
	  raise Parser::AttributeConstraintError.new(
            "cannot parse #{value} for #{attr}")
	end
      end
      if value.source == 'unbounded'
        @maxoccurs = nil
      else
        @maxoccurs = Integer(value.source)
      end
      value.source
    when MinOccursAttrName
      if parent.is_a?(All)
	unless ['0', '1'].include?(value.source)
	  raise Parser::AttributeConstraintError.new(
            "cannot parse #{value} for #{attr}")
	end
      end
      @minoccurs = Integer(value.source)
    when NillableAttrName
      @nillable = to_boolean(value)
    when DefaultAttrName
      @default = value.source
    when AbstractAttrName
      @abstract = to_boolean(value)
    else
      nil
    end
  end

private

  def directelement?
    parent.is_a?(Schema)
  end

  def refelement
    @refelement ||= (@ref ? root.collect_elements[@ref] : nil)
  end
end


end
end
