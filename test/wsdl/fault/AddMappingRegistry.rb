require 'Add.rb'
require 'soap/mapping'

module WSDL; module Fault

module AddMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsFaulttest = "http://fault.test/Faulttest"

  LiteralRegistry.register(
    :class => WSDL::Fault::Add,
    :schema_name => XSD::QName.new(NsFaulttest, "Add"),
    :schema_element => [
      ["value", ["SOAP::SOAPInt", XSD::QName.new(nil, "value")]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::Fault::AddResponse,
    :schema_name => XSD::QName.new(NsFaulttest, "AddResponse"),
    :schema_element => [
      ["sum", ["SOAP::SOAPInt", XSD::QName.new(nil, "sum")]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::Fault::AddFault,
    :schema_name => XSD::QName.new(NsFaulttest, "AddFault"),
    :schema_element => [
      ["reason", ["SOAP::SOAPString", XSD::QName.new(nil, "Reason")]],
      ["severity", ["SOAP::SOAPString", XSD::QName.new(nil, "Severity")]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::Fault::NegativeValueFault,
    :schema_name => XSD::QName.new(NsFaulttest, "NegativeValueFault"),
    :schema_element => [
      ["reason", ["SOAP::SOAPString", XSD::QName.new(nil, "Reason")]],
      ["severity", ["SOAP::SOAPString", XSD::QName.new(nil, "Severity")]]
    ]
  )
end

end; end
