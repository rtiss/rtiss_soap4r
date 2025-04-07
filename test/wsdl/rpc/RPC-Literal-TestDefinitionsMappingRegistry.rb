require 'RPC-Literal-TestDefinitions.rb'
require 'soap/mapping'

module WSDL; module RPC

module RPCLiteralTestDefinitionsMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsTypes = "http://soapbuilders.org/rpc-lit-test/types"

  EncodedRegistry.register(
    :class => WSDL::RPC::ArrayOfstring,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfstring"),
    :schema_element => [
      ["stringItem", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => WSDL::RPC::ArrayOfstringInline,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfstringInline"),
    :schema_element => [
      ["stringItem", ["SOAP::SOAPString[]", XSD::QName.new(nil, "stringItem")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => WSDL::RPC::ArrayOfint,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfint"),
    :schema_element => [
      ["integer", ["SOAP::SOAPInt[]", XSD::QName.new(nil, "integer")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => WSDL::RPC::SOAPStruct,
    :schema_type => XSD::QName.new(NsTypes, "SOAPStruct"),
    :schema_element => [
      ["varString", ["SOAP::SOAPString", XSD::QName.new(nil, "varString")]],
      ["varInt", ["SOAP::SOAPInt", XSD::QName.new(nil, "varInt")], [0, 1]],
      ["varFloat", ["SOAP::SOAPFloat", XSD::QName.new(nil, "varFloat")]]
    ]
  )

  EncodedRegistry.register(
    :class => WSDL::RPC::CombinationArray,
    :schema_type => XSD::QName.new(NsTypes, "CombinationArray"),
    :schema_element => [
      ["a", ["SOAP::SOAPString[]", XSD::QName.new(nil, "a")], [0, nil]],
      ["b", ["SOAP::SOAPInt[]", XSD::QName.new(nil, "b")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => WSDL::RPC::ArrayOfSOAPStruct,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfSOAPStruct"),
    :schema_element => [
      ["structItem", "WSDL::RPC::SOAPStruct[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => WSDL::RPC::SOAPStructStruct,
    :schema_type => XSD::QName.new(NsTypes, "SOAPStructStruct"),
    :schema_element => [
      ["varString", ["SOAP::SOAPString", XSD::QName.new(nil, "varString")]],
      ["varInt", ["SOAP::SOAPInt", XSD::QName.new(nil, "varInt")], [0, 1]],
      ["varFloat", ["SOAP::SOAPFloat", XSD::QName.new(nil, "varFloat")]],
      ["structItem", "WSDL::RPC::SOAPStruct"]
    ]
  )

  EncodedRegistry.register(
    :class => WSDL::RPC::SOAPArrayStruct,
    :schema_type => XSD::QName.new(NsTypes, "SOAPArrayStruct"),
    :schema_element => [
      ["varString", ["SOAP::SOAPString", XSD::QName.new(nil, "varString")]],
      ["varInt", ["SOAP::SOAPInt", XSD::QName.new(nil, "varInt")]],
      ["varFloat", ["SOAP::SOAPFloat", XSD::QName.new(nil, "varFloat")]],
      ["varArray", ["WSDL::RPC::ArrayOfstring", XSD::QName.new(nil, "varArray")]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::RPC::ArrayOfstring,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfstring"),
    :schema_element => [
      ["stringItem", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::RPC::ArrayOfstringInline,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfstringInline"),
    :schema_element => [
      ["stringItem", ["SOAP::SOAPString[]", XSD::QName.new(nil, "stringItem")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::RPC::ArrayOfint,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfint"),
    :schema_element => [
      ["integer", ["SOAP::SOAPInt[]", XSD::QName.new(nil, "integer")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::RPC::SOAPStruct,
    :schema_type => XSD::QName.new(NsTypes, "SOAPStruct"),
    :schema_element => [
      ["varString", ["SOAP::SOAPString", XSD::QName.new(nil, "varString")]],
      ["varInt", ["SOAP::SOAPInt", XSD::QName.new(nil, "varInt")], [0, 1]],
      ["varFloat", ["SOAP::SOAPFloat", XSD::QName.new(nil, "varFloat")]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::RPC::CombinationArray,
    :schema_type => XSD::QName.new(NsTypes, "CombinationArray"),
    :schema_element => [
      ["a", ["SOAP::SOAPString[]", XSD::QName.new(nil, "a")], [0, nil]],
      ["b", ["SOAP::SOAPInt[]", XSD::QName.new(nil, "b")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::RPC::ArrayOfSOAPStruct,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfSOAPStruct"),
    :schema_element => [
      ["structItem", "WSDL::RPC::SOAPStruct[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::RPC::SOAPStructStruct,
    :schema_type => XSD::QName.new(NsTypes, "SOAPStructStruct"),
    :schema_element => [
      ["varString", ["SOAP::SOAPString", XSD::QName.new(nil, "varString")]],
      ["varInt", ["SOAP::SOAPInt", XSD::QName.new(nil, "varInt")], [0, 1]],
      ["varFloat", ["SOAP::SOAPFloat", XSD::QName.new(nil, "varFloat")]],
      ["structItem", "WSDL::RPC::SOAPStruct"]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::RPC::SOAPArrayStruct,
    :schema_type => XSD::QName.new(NsTypes, "SOAPArrayStruct"),
    :schema_element => [
      ["varString", ["SOAP::SOAPString", XSD::QName.new(nil, "varString")]],
      ["varInt", ["SOAP::SOAPInt", XSD::QName.new(nil, "varInt")]],
      ["varFloat", ["SOAP::SOAPFloat", XSD::QName.new(nil, "varFloat")]],
      ["varArray", ["WSDL::RPC::ArrayOfstring", XSD::QName.new(nil, "varArray")]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::RPC::SOAPStruct,
    :schema_name => XSD::QName.new(NsTypes, "structItem"),
    :schema_element => [
      ["varString", ["SOAP::SOAPString", XSD::QName.new(nil, "varString")]],
      ["varInt", ["SOAP::SOAPInt", XSD::QName.new(nil, "varInt")], [0, 1]],
      ["varFloat", ["SOAP::SOAPFloat", XSD::QName.new(nil, "varFloat")]]
    ]
  )
end

end; end
