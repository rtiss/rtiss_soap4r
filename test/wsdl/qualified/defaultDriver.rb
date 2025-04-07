require 'default.rb'
require 'defaultMappingRegistry.rb'
require 'soap/rpc/driver'

module WSDL

class PnumSoap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://www50.brinkster.com/vbfacileinpt/np.asmx"

  Methods = [
    [ "http://www50.brinkster.com/vbfacileinpt/np/GetPrimeNumbers",
      "getPrimeNumbers",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://www50.brinkster.com/vbfacileinpt/np", "GetPrimeNumbers"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://www50.brinkster.com/vbfacileinpt/np", "GetPrimeNumbersResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end


end
