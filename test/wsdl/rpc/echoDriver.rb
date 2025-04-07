require 'echo.rb'
require 'echoMappingRegistry.rb'
require 'soap/rpc/driver'

module Prefix

class Echo_port_type < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://localhost:10080"
  NsRpc = "urn:rpc"

  Methods = [
    [ XSD::QName.new(NsRpc, "echo"),
      "",
      "echo",
      [ [:in, "arg1", ["Prefix::Person", "urn:rpc-type", "person"]],
        [:in, "arg2", ["Prefix::Person", "urn:rpc-type", "person"]],
        [:retval, "return", ["Prefix::Person", "urn:rpc-type", "person"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsRpc, "echo_basetype"),
      "",
      "echo_basetype",
      [ [:in, "date", ["::SOAP::SOAPDate"]],
        [:in, "long", ["::SOAP::SOAPLong"]],
        [:retval, "return", ["::SOAP::SOAPDate"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsRpc, "echo_err"),
      "",
      "echo_err",
      [ [:in, "arg1", ["Prefix::Person", "urn:rpc-type", "person"]],
        [:in, "arg2", ["Prefix::Person", "urn:rpc-type", "person"]],
        [:retval, "return", ["Prefix::Person", "urn:rpc-type", "person"]] ],
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
