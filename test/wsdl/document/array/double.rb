require 'xsd/qname'

module WSDL; module Document


# {http://tempuri.org/}report-record
#   xmlattr_a - SOAP::SOAPString
#   xmlattr_b - SOAP::SOAPString
#   xmlattr_c - SOAP::SOAPString
class ReportRecord
  AttrA = XSD::QName.new(nil, "a")
  AttrB = XSD::QName.new(nil, "b")
  AttrC = XSD::QName.new(nil, "c")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_a
    __xmlattr[AttrA]
  end

  def xmlattr_a=(value)
    __xmlattr[AttrA] = value
  end

  def xmlattr_b
    __xmlattr[AttrB]
  end

  def xmlattr_b=(value)
    __xmlattr[AttrB] = value
  end

  def xmlattr_c
    __xmlattr[AttrC]
  end

  def xmlattr_c=(value)
    __xmlattr[AttrC] = value
  end

  def initialize
    @__xmlattr = {}
  end
end

# {http://tempuri.org/}ArrayOfDouble
class ArrayOfDouble < ::Array
end

# {http://tempuri.org/}ArrayOfRecord
class ArrayOfRecord < ::Array
end

# {http://tempuri.org/}echo
#   ary - WSDL::Document::ArrayOfDouble
class Echo
  attr_accessor :ary

  def initialize(ary = nil)
    @ary = ary
  end
end

# {http://tempuri.org/}echoResponse
#   ary - WSDL::Document::ArrayOfDouble
class EchoResponse
  attr_accessor :ary

  def initialize(ary = nil)
    @ary = ary
  end
end

# {http://tempuri.org/}echo2
#   arg - WSDL::Document::ArrayOfComplex
class Echo2
  attr_accessor :arg

  def initialize(arg = nil)
    @arg = arg
  end
end

# {http://tempuri.org/}echo2Response
#   arg - WSDL::Document::ArrayOfComplex
class Echo2Response
  attr_accessor :arg

  def initialize(arg = nil)
    @arg = arg
  end
end

# {http://tempuri.org/}ArrayOfComplex
class ArrayOfComplex < ::Array
end

# {http://tempuri.org/}Complex
#   string - SOAP::SOAPString
#   double - SOAP::SOAPDouble
class Complex
  attr_accessor :string
  attr_accessor :double

  def initialize(string = nil, double = nil)
    @string = string
    @double = double
  end
end


end; end
