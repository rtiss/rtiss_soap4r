require 'double.rb'
require 'soap/mapping'

module WSDL; module Document

module DoubleMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsTempuriOrg = "http://tempuri.org/"

  EncodedRegistry.register(
    :class => WSDL::Document::ReportRecord,
    :schema_type => XSD::QName.new(NsTempuriOrg, "report-record"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "a") => "SOAP::SOAPString",
      XSD::QName.new(nil, "b") => "SOAP::SOAPString",
      XSD::QName.new(nil, "c") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => WSDL::Document::ArrayOfDouble,
    :schema_type => XSD::QName.new(NsTempuriOrg, "ArrayOfDouble"),
    :schema_element => [
      ["double", "SOAP::SOAPDouble[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::Document::ReportRecord,
    :schema_type => XSD::QName.new(NsTempuriOrg, "report-record"),
    :schema_element => [],
    :schema_attribute => {
      XSD::QName.new(nil, "a") => "SOAP::SOAPString",
      XSD::QName.new(nil, "b") => "SOAP::SOAPString",
      XSD::QName.new(nil, "c") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => WSDL::Document::ArrayOfDouble,
    :schema_type => XSD::QName.new(NsTempuriOrg, "ArrayOfDouble"),
    :schema_element => [
      ["double", "SOAP::SOAPDouble[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::Document::ArrayOfRecord,
    :schema_name => XSD::QName.new(NsTempuriOrg, "ArrayOfRecord"),
    :schema_element => [
      ["record", "WSDL::Document::ReportRecord[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::Document::Echo,
    :schema_name => XSD::QName.new(NsTempuriOrg, "echo"),
    :schema_element => [
      ["ary", "WSDL::Document::ArrayOfDouble"]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::Document::EchoResponse,
    :schema_name => XSD::QName.new(NsTempuriOrg, "echoResponse"),
    :schema_element => [
      ["ary", "WSDL::Document::ArrayOfDouble"]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::Document::ArrayOfDouble,
    :schema_name => XSD::QName.new(NsTempuriOrg, "ArrayOfDouble"),
    :schema_element => [
      ["double", "SOAP::SOAPDouble[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::Document::Echo2,
    :schema_name => XSD::QName.new(NsTempuriOrg, "echo2"),
    :schema_element => [
      ["arg", "WSDL::Document::ArrayOfComplex"]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::Document::Echo2Response,
    :schema_name => XSD::QName.new(NsTempuriOrg, "echo2Response"),
    :schema_element => [
      ["arg", "WSDL::Document::ArrayOfComplex"]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::Document::ArrayOfComplex,
    :schema_name => XSD::QName.new(NsTempuriOrg, "ArrayOfComplex"),
    :schema_element => [
      ["complex", ["WSDL::Document::Complex[]", XSD::QName.new(NsTempuriOrg, "Complex")], [1, 3]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::Document::Complex,
    :schema_name => XSD::QName.new(NsTempuriOrg, "Complex"),
    :schema_element => [
      ["string", "SOAP::SOAPString"],
      ["double", "SOAP::SOAPDouble"]
    ]
  )
end

end; end
