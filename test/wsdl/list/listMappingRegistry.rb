require 'list.rb'
require 'soap/mapping'

module WSDL; module List

module ListMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsList = "urn:list"

  EncodedRegistry.register(
    :class => WSDL::List::Language,
    :schema_type => XSD::QName.new(NsList, "language")
  )

  LiteralRegistry.register(
    :class => WSDL::List::Language,
    :schema_type => XSD::QName.new(NsList, "language")
  )

  LiteralRegistry.register(
    :class => WSDL::List::Echoele,
    :schema_name => XSD::QName.new(NsList, "echoele"),
    :schema_element => [
      ["e1", [nil, XSD::QName.new(nil, "e1")], [0, 1]],
      ["e2", [nil, XSD::QName.new(nil, "e2")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::List::Echo_response,
    :schema_name => XSD::QName.new(NsList, "echo_response"),
    :schema_element => [
      ["e1", [nil, XSD::QName.new(nil, "e1")], [0, 1]],
      ["e2", [nil, XSD::QName.new(nil, "e2")], [0, 1]]
    ]
  )
end

end; end
