require 'lp.rb'
require 'soap/mapping'

module WSDL

module LpMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsLp = "urn:lp"

  EncodedRegistry.register(
    :class => WSDL::Login,
    :schema_type => XSD::QName.new(NsLp, "login"),
    :schema_element => [
      ["username", ["SOAP::SOAPString", XSD::QName.new(nil, "username")]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")]],
      ["timezone", ["SOAP::SOAPString", XSD::QName.new(nil, "timezone")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => WSDL::LoginResponse,
    :schema_type => XSD::QName.new(NsLp, "loginResponse"),
    :schema_element => [
      ["loginResult", ["WSDL::LoginResponse::LoginResult", XSD::QName.new(nil, "loginResult")]]
    ]
  )

  EncodedRegistry.register(
    :class => WSDL::LoginResponse::LoginResult,
    :schema_name => XSD::QName.new(nil, "loginResult"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["sessionID", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::Login,
    :schema_type => XSD::QName.new(NsLp, "login"),
    :schema_element => [
      ["username", ["SOAP::SOAPString", XSD::QName.new(nil, "username")]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")]],
      ["timezone", ["SOAP::SOAPString", XSD::QName.new(nil, "timezone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::LoginResponse,
    :schema_type => XSD::QName.new(NsLp, "loginResponse"),
    :schema_element => [
      ["loginResult", ["WSDL::LoginResponse::LoginResult", XSD::QName.new(nil, "loginResult")]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::LoginResponse::LoginResult,
    :schema_name => XSD::QName.new(nil, "loginResult"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["sessionID", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::Login,
    :schema_name => XSD::QName.new(NsLp, "login"),
    :schema_element => [
      ["username", ["SOAP::SOAPString", XSD::QName.new(nil, "username")]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "password")]],
      ["timezone", ["SOAP::SOAPString", XSD::QName.new(nil, "timezone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::LoginResponse,
    :schema_name => XSD::QName.new(NsLp, "loginResponse"),
    :schema_element => [
      ["loginResult", ["WSDL::LoginResponse::LoginResult", XSD::QName.new(nil, "loginResult")]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::LoginResponse::LoginResult,
    :schema_name => XSD::QName.new(nil, "loginResult"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["sessionID", "SOAP::SOAPString"]
    ]
  )
end

end
