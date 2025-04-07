require 'choice.rb'
require 'choiceMappingRegistry.rb'
require 'soap/rpc/driver'

module WSDL
module Choice

class Choice_porttype < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://localhost:17171/"

  Methods = [
    [ "urn:choice:echo",
      "echo",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:choice", "echoele"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:choice", "echo_response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "urn:choice:echo_complex",
      "echo_complex",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:choice", "echoele_complex"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:choice", "echo_complex_response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "urn:choice:echo_complex_emptyArrayAtFirst",
      "echo_complex_emptyArrayAtFirst",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "urn:choice", "echoele_complex_emptyArrayAtFirst"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "urn:choice", "echoele_complex_emptyArrayAtFirst"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = ChoiceMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = ChoiceMappingRegistry::LiteralRegistry
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
