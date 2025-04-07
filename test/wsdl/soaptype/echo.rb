require 'xsd/qname'

module WSDL; module RPC


# {urn:soaptype-type}wrapper
#   short - SOAP::SOAPShort
#   long - SOAP::SOAPLong
#   double - SOAP::SOAPDouble
class Wrapper
  attr_accessor :short
  attr_accessor :long
  attr_accessor :double

  def initialize(short = nil, long = nil, double = nil)
    @short = short
    @long = long
    @double = double
  end
end


end; end
