require 'xsd/qname'

module WSDL; module SimpleContent


# {urn:www.example.org:simpleContent}PhoneList
#   phone - WSDL::SimpleContent::PhoneNumber
#   xmlattr_default - SOAP::SOAPString
class PhoneList
  AttrDefault = XSD::QName.new(nil, "default")

  attr_accessor :phone

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_default
    __xmlattr[AttrDefault]
  end

  def xmlattr_default=(value)
    __xmlattr[AttrDefault] = value
  end

  def initialize(phone = [])
    @phone = phone
    @__xmlattr = {}
  end
end

# {urn:www.example.org:simpleContent}PhoneNumber
#   xmlattr_type - SOAP::SOAPString
class PhoneNumber < ::String
  AttrType = XSD::QName.new(nil, "type")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_type
    __xmlattr[AttrType]
  end

  def xmlattr_type=(value)
    __xmlattr[AttrType] = value
  end

  def initialize(*arg)
    super
    @__xmlattr = {}
  end
end

# {urn:www.example.org:simpleContent}PhoneNumberType
class PhoneNumberType < ::String
  Fax = new("Fax")
  Home = new("Home")
  Mobile = new("Mobile")
  Office = new("Office")
  Pager = new("Pager")
end

# {urn:www.example.org:simpleContent}Address
#   list - WSDL::SimpleContent::PhoneList
#   blah - SOAP::SOAPString
class Address
  attr_accessor :list
  attr_accessor :blah

  def initialize(list = nil, blah = nil)
    @list = list
    @blah = blah
  end
end


end; end
