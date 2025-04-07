require 'simpleContent.rb'
require 'soap/mapping'

module WSDL; module SimpleContent

module SimpleContentMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsSimpleContent = "urn:www.example.org:simpleContent"

  EncodedRegistry.register(
    :class => WSDL::SimpleContent::PhoneList,
    :schema_type => XSD::QName.new(NsSimpleContent, "PhoneList"),
    :schema_element => [
      ["phone", ["WSDL::SimpleContent::PhoneNumber[]", XSD::QName.new(nil, "phone")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "default") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => WSDL::SimpleContent::PhoneNumber,
    :schema_type => XSD::QName.new(NsSimpleContent, "PhoneNumber"),
    :schema_attribute => {
      XSD::QName.new(nil, "type") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => WSDL::SimpleContent::PhoneNumberType,
    :schema_type => XSD::QName.new(NsSimpleContent, "PhoneNumberType")
  )

  LiteralRegistry.register(
    :class => WSDL::SimpleContent::PhoneList,
    :schema_type => XSD::QName.new(NsSimpleContent, "PhoneList"),
    :schema_element => [
      ["phone", ["WSDL::SimpleContent::PhoneNumber[]", XSD::QName.new(nil, "phone")], [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "default") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => WSDL::SimpleContent::PhoneNumber,
    :schema_type => XSD::QName.new(NsSimpleContent, "PhoneNumber"),
    :schema_attribute => {
      XSD::QName.new(nil, "type") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => WSDL::SimpleContent::PhoneNumberType,
    :schema_type => XSD::QName.new(NsSimpleContent, "PhoneNumberType")
  )

  LiteralRegistry.register(
    :class => WSDL::SimpleContent::Address,
    :schema_name => XSD::QName.new(NsSimpleContent, "Address"),
    :schema_element => [
      ["list", ["WSDL::SimpleContent::PhoneList", XSD::QName.new(nil, "list")]],
      ["blah", ["SOAP::SOAPString", XSD::QName.new(nil, "blah")]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::SimpleContent::PhoneNumber,
    :schema_name => XSD::QName.new(NsSimpleContent, "PhoneNumberElement"),
    :schema_attribute => {
      XSD::QName.new(nil, "type") => "SOAP::SOAPString"
    }
  )
end

end; end
