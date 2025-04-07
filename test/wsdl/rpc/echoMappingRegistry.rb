require 'echo.rb'
require 'soap/mapping'

module Prefix

module EchoMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsRpcType = "urn:rpc-type"

  EncodedRegistry.register(
    :class => Prefix::Person,
    :schema_type => XSD::QName.new(NsRpcType, "person"),
    :schema_element => [
      ["family_name", ["SOAP::SOAPString", XSD::QName.new(nil, "family-name")]],
      ["given_name", ["SOAP::SOAPString", XSD::QName.new(nil, "Given_name")]],
      ["age", ["SOAP::SOAPLong", XSD::QName.new(nil, "age")]],
      ["gender", ["Prefix::Gender", XSD::QName.new(nil, "gender")]],
      ["link", ["Prefix::Person", XSD::QName.new(nil, "link")]]
    ]
  )

  EncodedRegistry.register(
    :class => Prefix::Gender,
    :schema_type => XSD::QName.new(NsRpcType, "gender")
  )

  LiteralRegistry.register(
    :class => Prefix::Person,
    :schema_type => XSD::QName.new(NsRpcType, "person"),
    :schema_element => [
      ["family_name", ["SOAP::SOAPString", XSD::QName.new(nil, "family-name")]],
      ["given_name", ["SOAP::SOAPString", XSD::QName.new(nil, "Given_name")]],
      ["age", ["SOAP::SOAPLong", XSD::QName.new(nil, "age")]],
      ["gender", ["Prefix::Gender", XSD::QName.new(nil, "gender")]],
      ["link", ["Prefix::Person", XSD::QName.new(nil, "link")]]
    ]
  )

  LiteralRegistry.register(
    :class => Prefix::Gender,
    :schema_type => XSD::QName.new(NsRpcType, "gender")
  )
end

end
