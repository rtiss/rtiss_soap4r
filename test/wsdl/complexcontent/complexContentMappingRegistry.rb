require 'complexContent.rb'
require 'soap/mapping'

module ComplexContentMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsComplexContent = "urn:complexContent"
  NsComplexContentType = "urn:complexContent.type"

  EncodedRegistry.register(
    :class => Base,
    :schema_type => XSD::QName.new(NsComplexContentType, "Base"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(NsComplexContentType, "Id")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsComplexContentType, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Derived,
    :schema_type => XSD::QName.new(NsComplexContentType, "Derived"),
    :schema_basetype => XSD::QName.new(NsComplexContentType, "Base"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(NsComplexContentType, "Id")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsComplexContentType, "Type")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsComplexContentType, "Name")]]
    ]
  )

  LiteralRegistry.register(
    :class => Base,
    :schema_type => XSD::QName.new(NsComplexContentType, "Base"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(NsComplexContentType, "Id")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsComplexContentType, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Derived,
    :schema_type => XSD::QName.new(NsComplexContentType, "Derived"),
    :schema_basetype => XSD::QName.new(NsComplexContentType, "Base"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(NsComplexContentType, "Id")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsComplexContentType, "Type")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsComplexContentType, "Name")]]
    ]
  )

  LiteralRegistry.register(
    :class => Derived,
    :schema_name => XSD::QName.new(NsComplexContent, "Derived"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(NsComplexContentType, "Id")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsComplexContentType, "Type")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsComplexContentType, "Name")]]
    ]
  )

  LiteralRegistry.register(
    :class => Echo,
    :schema_name => XSD::QName.new(NsComplexContent, "echo"),
    :schema_element => [
      ["item", "Derived"]
    ]
  )
end
