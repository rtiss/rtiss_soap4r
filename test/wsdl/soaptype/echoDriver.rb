require 'echo.rb'
require 'echoMappingRegistry.rb'
require 'soap/rpc/driver'

module WSDL
module RPC

class Echo_port_type < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://localhost:10080"
  NsSoaptype = "urn:soaptype"

  Methods = [
    [ XSD::QName.new(NsSoaptype, "echo_soaptype"),
      "",
      "echo_soaptype",
      [ [:in, "arg", ["WSDL::RPC::Wrapper", "urn:soaptype-type", "wrapper"]],
        [:retval, "return", ["WSDL::RPC::Wrapper", "urn:soaptype-type", "wrapper"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = EchoMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = EchoMappingRegistry::LiteralRegistry
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
