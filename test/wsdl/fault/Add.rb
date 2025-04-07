require 'xsd/qname'

module WSDL; module Fault


# {http://fault.test/Faulttest}Add
#   value - SOAP::SOAPInt
class Add
  attr_accessor :value

  def initialize(value = nil)
    @value = value
  end
end

# {http://fault.test/Faulttest}AddResponse
#   sum - SOAP::SOAPInt
class AddResponse
  attr_accessor :sum

  def initialize(sum = nil)
    @sum = sum
  end
end

# {http://fault.test/Faulttest}AddFault
#   reason - SOAP::SOAPString
#   severity - SOAP::SOAPString
class AddFault < ::StandardError
  attr_accessor :reason
  attr_accessor :severity

  def initialize(reason = nil, severity = nil)
    @reason = reason
    @severity = severity
  end
end

# {http://fault.test/Faulttest}NegativeValueFault
#   reason - SOAP::SOAPString
#   severity - SOAP::SOAPString
class NegativeValueFault < ::StandardError
  attr_accessor :reason
  attr_accessor :severity

  def initialize(reason = nil, severity = nil)
    @reason = reason
    @severity = severity
  end
end


end; end
