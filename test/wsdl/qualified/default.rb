require 'xsd/qname'

module WSDL


# {http://www50.brinkster.com/vbfacileinpt/np}GetPrimeNumbers
#   min - SOAP::SOAPString
#   max - SOAP::SOAPString
class GetPrimeNumbers
  attr_accessor :min
  attr_accessor :max

  def initialize(min = nil, max = nil)
    @min = min
    @max = max
  end
end

# {http://www50.brinkster.com/vbfacileinpt/np}GetPrimeNumbersResponse
#   getPrimeNumbersResult - SOAP::SOAPString
class GetPrimeNumbersResponse
  attr_accessor :getPrimeNumbersResult

  def initialize(getPrimeNumbersResult = nil)
    @getPrimeNumbersResult = getPrimeNumbersResult
  end
end


end
