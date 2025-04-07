require 'abstract.rb'
require 'soap/mapping'

module WSDL; module Abstract

module AbstractMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsAbstract = "urn:www.example.org:abstract"

  EncodedRegistry.register(
    :class => WSDL::Abstract::Book,
    :schema_type => XSD::QName.new(NsAbstract, "Book"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["author", ["WSDL::Abstract::Author", XSD::QName.new(nil, "author")]]
    ]
  )

  EncodedRegistry.register(
    :class => WSDL::Abstract::UserAuthor,
    :schema_type => XSD::QName.new(NsAbstract, "UserAuthor"),
    :schema_basetype => XSD::QName.new(NsAbstract, "Author"),
    :schema_element => [
      ["firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "firstname")]],
      ["lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "lastname")]],
      ["userid", ["SOAP::SOAPString", XSD::QName.new(nil, "userid")]]
    ]
  )

  EncodedRegistry.register(
    :class => WSDL::Abstract::NonUserAuthor,
    :schema_type => XSD::QName.new(NsAbstract, "NonUserAuthor"),
    :schema_basetype => XSD::QName.new(NsAbstract, "Author"),
    :schema_element => [
      ["firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "firstname")]],
      ["lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "lastname")]],
      ["nonuserid", ["SOAP::SOAPString", XSD::QName.new(nil, "nonuserid")]]
    ]
  )

  EncodedRegistry.register(
    :class => WSDL::Abstract::BaseClass,
    :schema_type => XSD::QName.new(NsAbstract, "BaseClass"),
    :schema_element => [
      ["id", ["SOAP::SOAPUnsignedInt", XSD::QName.new(nil, "id")]]
    ]
  )

  EncodedRegistry.register(
    :class => WSDL::Abstract::DerivedClass1,
    :schema_type => XSD::QName.new(NsAbstract, "DerivedClass1"),
    :schema_basetype => XSD::QName.new(NsAbstract, "BaseClass"),
    :schema_element => [
      ["id", ["SOAP::SOAPUnsignedInt", XSD::QName.new(nil, "id")]],
      ["someVar1", ["SOAP::SOAPString[]", XSD::QName.new(nil, "someVar1")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => WSDL::Abstract::DerivedClass2,
    :schema_type => XSD::QName.new(NsAbstract, "DerivedClass2"),
    :schema_basetype => XSD::QName.new(NsAbstract, "BaseClass"),
    :schema_element => [
      ["id", ["SOAP::SOAPUnsignedInt", XSD::QName.new(nil, "id")]],
      ["someVar2", ["SOAP::SOAPString[]", XSD::QName.new(nil, "someVar2")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::Abstract::Book,
    :schema_type => XSD::QName.new(NsAbstract, "Book"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["author", ["WSDL::Abstract::Author", XSD::QName.new(nil, "author")]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::Abstract::UserAuthor,
    :schema_type => XSD::QName.new(NsAbstract, "UserAuthor"),
    :schema_basetype => XSD::QName.new(NsAbstract, "Author"),
    :schema_element => [
      ["firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "firstname")]],
      ["lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "lastname")]],
      ["userid", ["SOAP::SOAPString", XSD::QName.new(nil, "userid")]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::Abstract::NonUserAuthor,
    :schema_type => XSD::QName.new(NsAbstract, "NonUserAuthor"),
    :schema_basetype => XSD::QName.new(NsAbstract, "Author"),
    :schema_element => [
      ["firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "firstname")]],
      ["lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "lastname")]],
      ["nonuserid", ["SOAP::SOAPString", XSD::QName.new(nil, "nonuserid")]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::Abstract::BaseClass,
    :schema_type => XSD::QName.new(NsAbstract, "BaseClass"),
    :schema_element => [
      ["id", ["SOAP::SOAPUnsignedInt", XSD::QName.new(nil, "id")]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::Abstract::DerivedClass1,
    :schema_type => XSD::QName.new(NsAbstract, "DerivedClass1"),
    :schema_basetype => XSD::QName.new(NsAbstract, "BaseClass"),
    :schema_element => [
      ["id", ["SOAP::SOAPUnsignedInt", XSD::QName.new(nil, "id")]],
      ["someVar1", ["SOAP::SOAPString[]", XSD::QName.new(nil, "someVar1")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::Abstract::DerivedClass2,
    :schema_type => XSD::QName.new(NsAbstract, "DerivedClass2"),
    :schema_basetype => XSD::QName.new(NsAbstract, "BaseClass"),
    :schema_element => [
      ["id", ["SOAP::SOAPUnsignedInt", XSD::QName.new(nil, "id")]],
      ["someVar2", ["SOAP::SOAPString[]", XSD::QName.new(nil, "someVar2")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::Abstract::Author,
    :schema_name => XSD::QName.new(NsAbstract, "Author"),
    :schema_element => [
      ["firstname", ["SOAP::SOAPString", XSD::QName.new(nil, "firstname")]],
      ["lastname", ["SOAP::SOAPString", XSD::QName.new(nil, "lastname")]]
    ]
  )
end

end; end
