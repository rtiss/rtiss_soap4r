require 'test/unit'
require 'soap/marshal'


module SOAP; module Case

  # {urn:TruckMateTypes}TTMHeader
  class TTMHeader
    @@schema_type = "TTMHeader"
    @@schema_ns = "urn:TruckMateTypes"
    @@schema_element = [
      ["dSN", ["SOAP::SOAPString", XSD::QName.new(nil, "DSN")]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "Password")]],
      ["schema", ["SOAP::SOAPString", XSD::QName.new(nil, "Schema")]],
      ["username", ["SOAP::SOAPString", XSD::QName.new(nil, "Username")]]
    ]

    attr_accessor :dSN
    attr_accessor :password
    attr_accessor :schema
    attr_accessor :username

    def initialize(dSN = nil, password = nil, schema = nil, username = nil)
      @dSN = dSN
      @password = password
      @schema = schema
      @username = username
    end
  end


end
end
