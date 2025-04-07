require 'default.rb'
require 'soap/mapping'

module WSDL

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsNp = "http://www50.brinkster.com/vbfacileinpt/np"

  LiteralRegistry.register(
    :class => WSDL::GetPrimeNumbers,
    :schema_name => XSD::QName.new(NsNp, "GetPrimeNumbers"),
    :schema_element => [
      ["min", ["SOAP::SOAPString", XSD::QName.new(nil, "Min")], [0, 1]],
      ["max", ["SOAP::SOAPString", XSD::QName.new(NsNp, "Max")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::GetPrimeNumbersResponse,
    :schema_name => XSD::QName.new(NsNp, "GetPrimeNumbersResponse"),
    :schema_element => [
      ["getPrimeNumbersResult", ["SOAP::SOAPString", XSD::QName.new(NsNp, "GetPrimeNumbersResult")], [0, 1]]
    ]
  )
end

end
