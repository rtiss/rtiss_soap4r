require 'xsd/qname'

module WSDL; module Document


# {urn:docrpc}echo_struct
#   m_string - SOAP::SOAPString
#   m_datetime - SOAP::SOAPDateTime
#   xmlattr_m_attr - SOAP::SOAPString
class Echo_struct
  AttrM_attr = XSD::QName.new(nil, "m_attr")

  attr_accessor :m_string
  attr_accessor :m_datetime

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_m_attr
    __xmlattr[AttrM_attr]
  end

  def xmlattr_m_attr=(value)
    __xmlattr[AttrM_attr] = value
  end

  def initialize(m_string = nil, m_datetime = nil)
    @m_string = m_string
    @m_datetime = m_datetime
    @__xmlattr = {}
  end
end

# {urn:docrpc}echoele
#   struct1 - WSDL::Document::Echo_struct
#   struct_2 - WSDL::Document::Echo_struct
#   long - SOAP::SOAPLong
#   xmlattr_attr_string - SOAP::SOAPString
#   xmlattr_attr_int - SOAP::SOAPInt
class Echoele
  AttrAttrInt = XSD::QName.new(nil, "attr-int")
  AttrAttr_string = XSD::QName.new(nil, "attr_string")

  attr_accessor :struct1
  attr_accessor :struct_2
  attr_accessor :long

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_attr_string
    __xmlattr[AttrAttr_string]
  end

  def xmlattr_attr_string=(value)
    __xmlattr[AttrAttr_string] = value
  end

  def xmlattr_attr_int
    __xmlattr[AttrAttrInt]
  end

  def xmlattr_attr_int=(value)
    __xmlattr[AttrAttrInt] = value
  end

  def initialize(struct1 = nil, struct_2 = nil, long = nil)
    @struct1 = struct1
    @struct_2 = struct_2
    @long = long
    @__xmlattr = {}
  end
end

# {urn:docrpc}echo_response
#   struct1 - WSDL::Document::Echo_struct
#   struct_2 - WSDL::Document::Echo_struct
#   long - SOAP::SOAPLong
#   xmlattr_attr_string - SOAP::SOAPString
#   xmlattr_attr_int - SOAP::SOAPInt
class Echo_response
  AttrAttrInt = XSD::QName.new(nil, "attr-int")
  AttrAttr_string = XSD::QName.new(nil, "attr_string")

  attr_accessor :struct1
  attr_accessor :struct_2
  attr_accessor :long

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_attr_string
    __xmlattr[AttrAttr_string]
  end

  def xmlattr_attr_string=(value)
    __xmlattr[AttrAttr_string] = value
  end

  def xmlattr_attr_int
    __xmlattr[AttrAttrInt]
  end

  def xmlattr_attr_int=(value)
    __xmlattr[AttrAttrInt] = value
  end

  def initialize(struct1 = nil, struct_2 = nil, long = nil)
    @struct1 = struct1
    @struct_2 = struct_2
    @long = long
    @__xmlattr = {}
  end
end


end; end
