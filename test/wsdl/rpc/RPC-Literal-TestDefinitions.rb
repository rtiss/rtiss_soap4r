require 'xsd/qname'

module WSDL; module RPC


# {http://soapbuilders.org/rpc-lit-test/types}ArrayOfstring
class ArrayOfstring < ::Array
end

# {http://soapbuilders.org/rpc-lit-test/types}ArrayOfstringInline
class ArrayOfstringInline < ::Array
end

# {http://soapbuilders.org/rpc-lit-test/types}ArrayOfint
class ArrayOfint < ::Array
end

# {http://soapbuilders.org/rpc-lit-test/types}SOAPStruct
#   varString - SOAP::SOAPString
#   varInt - SOAP::SOAPInt
#   varFloat - SOAP::SOAPFloat
class SOAPStruct
  attr_accessor :varString
  attr_accessor :varInt
  attr_accessor :varFloat

  def initialize(varString = nil, varInt = nil, varFloat = nil)
    @varString = varString
    @varInt = varInt
    @varFloat = varFloat
  end
end

# {http://soapbuilders.org/rpc-lit-test/types}CombinationArray
#   a - SOAP::SOAPString
#   b - SOAP::SOAPInt
class CombinationArray
  attr_accessor :a
  attr_accessor :b

  def initialize(a = [], b = [])
    @a = a
    @b = b
  end
end

# {http://soapbuilders.org/rpc-lit-test/types}ArrayOfSOAPStruct
class ArrayOfSOAPStruct < ::Array
end

# {http://soapbuilders.org/rpc-lit-test/types}SOAPStructStruct
#   varString - SOAP::SOAPString
#   varInt - SOAP::SOAPInt
#   varFloat - SOAP::SOAPFloat
#   structItem - WSDL::RPC::SOAPStruct
class SOAPStructStruct
  attr_accessor :varString
  attr_accessor :varInt
  attr_accessor :varFloat
  attr_accessor :structItem

  def initialize(varString = nil, varInt = nil, varFloat = nil, structItem = nil)
    @varString = varString
    @varInt = varInt
    @varFloat = varFloat
    @structItem = structItem
  end
end

# {http://soapbuilders.org/rpc-lit-test/types}SOAPArrayStruct
#   varString - SOAP::SOAPString
#   varInt - SOAP::SOAPInt
#   varFloat - SOAP::SOAPFloat
#   varArray - WSDL::RPC::ArrayOfstring
class SOAPArrayStruct
  attr_accessor :varString
  attr_accessor :varInt
  attr_accessor :varFloat
  attr_accessor :varArray

  def initialize(varString = nil, varInt = nil, varFloat = nil, varArray = nil)
    @varString = varString
    @varInt = varInt
    @varFloat = varFloat
    @varArray = varArray
  end
end


end; end
