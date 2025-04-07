require 'double.rb'
require 'doubleMappingRegistry.rb'
require 'soap/rpc/driver'

module WSDL
module Document

class PricerSoap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://localhost:17171"

  Methods = [
    [ "http://tempuri.org/echo",
      "echo",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://tempuri.org/", "echo"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://tempuri.org/", "echoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://tempuri.org/echo2",
      "echo2",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://tempuri.org/", "echo2"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://tempuri.org/", "echo2Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://tempuri.org/echo3",
      "echo3",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "http://tempuri.org/", "ArrayOfRecord"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "http://tempuri.org/", "ArrayOfRecord"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DoubleMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DoubleMappingRegistry::LiteralRegistry
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
end
