require 'echo.rb'
require 'soap/mapping'

module WSDL; module Document

module EchoMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsDocrpc = "urn:docrpc"

  EncodedRegistry.register(
    :class => WSDL::Document::Echo_struct,
    :schema_type => XSD::QName.new(NsDocrpc, "echo_struct"),
    :schema_element => [
      ["m_string", ["SOAP::SOAPString", XSD::QName.new(nil, "m_string")], [0, 1]],
      ["m_datetime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "m_datetime")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "m_attr") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => WSDL::Document::Echo_struct,
    :schema_type => XSD::QName.new(NsDocrpc, "echo_struct"),
    :schema_element => [
      ["m_string", ["SOAP::SOAPString", XSD::QName.new(nil, "m_string")], [0, 1]],
      ["m_datetime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "m_datetime")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "m_attr") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => WSDL::Document::Echoele,
    :schema_name => XSD::QName.new(NsDocrpc, "echoele"),
    :schema_element => [
      ["struct1", ["WSDL::Document::Echo_struct", XSD::QName.new(nil, "struct1")], [0, 1]],
      ["struct_2", ["WSDL::Document::Echo_struct", XSD::QName.new(nil, "struct-2")], [0, 1]],
      ["long", ["SOAP::SOAPLong", XSD::QName.new(nil, "long")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "attr_string") => "SOAP::SOAPString",
      XSD::QName.new(nil, "attr-int") => "SOAP::SOAPInt"
    }
  )

  LiteralRegistry.register(
    :class => WSDL::Document::Echo_response,
    :schema_name => XSD::QName.new(NsDocrpc, "echo_response"),
    :schema_element => [
      ["struct1", ["WSDL::Document::Echo_struct", XSD::QName.new(nil, "struct1")], [0, 1]],
      ["struct_2", ["WSDL::Document::Echo_struct", XSD::QName.new(nil, "struct-2")], [0, 1]],
      ["long", ["SOAP::SOAPLong", XSD::QName.new(nil, "long")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "attr_string") => "SOAP::SOAPString",
      XSD::QName.new(nil, "attr-int") => "SOAP::SOAPInt"
    }
  )
end

end; end
