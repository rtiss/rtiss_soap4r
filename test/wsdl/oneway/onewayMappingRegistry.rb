require 'oneway.rb'
require 'soap/mapping'

module WSDL; module Oneway

module OnewayMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsOneway = "http://www.example.com/oneway"

  LiteralRegistry.register(
    :class => WSDL::Oneway::OnewayProcessRequest,
    :schema_name => XSD::QName.new(NsOneway, "onewayProcessRequest"),
    :schema_element => [
      ["msg", "SOAP::SOAPString"]
    ]
  )
end

end; end
