require 'xsd/qname'

# {urn:example.com:soapenc-type}version_struct
#   version - T_version
#   msg - SOAP::SOAPString
class Version_struct
  attr_accessor :version
  attr_accessor :msg

  def initialize(version = nil, msg = nil)
    @version = version
    @msg = msg
  end
end

# {urn:example.com:soapenc-type}t_version
class T_version < ::String
  C_16 = new("1.6")
  C_18 = new("1.8")
  C_19 = new("1.9")
end
