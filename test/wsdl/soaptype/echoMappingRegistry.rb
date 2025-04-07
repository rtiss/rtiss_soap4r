require 'echo.rb'
require 'soap/mapping'

module WSDL; module RPC

module EchoMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsSoaptypeType = "urn:soaptype-type"

  EncodedRegistry.register(
    :class => WSDL::RPC::Wrapper,
    :schema_type => XSD::QName.new(NsSoaptypeType, "wrapper"),
    :schema_element => [
      ["short", ["SOAP::SOAPShort", XSD::QName.new(nil, "short")]],
      ["long", ["SOAP::SOAPLong", XSD::QName.new(nil, "long")]],
      ["double", ["SOAP::SOAPDouble", XSD::QName.new(nil, "double")]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::RPC::Wrapper,
    :schema_type => XSD::QName.new(NsSoaptypeType, "wrapper"),
    :schema_element => [
      ["short", ["SOAP::SOAPShort", XSD::QName.new(nil, "short")]],
      ["long", ["SOAP::SOAPLong", XSD::QName.new(nil, "long")]],
      ["double", ["SOAP::SOAPDouble", XSD::QName.new(nil, "double")]]
    ]
  )
end

end; end
