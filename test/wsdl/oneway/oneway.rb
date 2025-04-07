require 'xsd/qname'

module WSDL; module Oneway


# {http://www.example.com/oneway}onewayProcessRequest
#   msg - SOAP::SOAPString
class OnewayProcessRequest
  attr_accessor :msg

  def initialize(msg = nil)
    @msg = msg
  end
end


end; end
