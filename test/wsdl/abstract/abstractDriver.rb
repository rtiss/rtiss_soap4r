require 'abstract.rb'
require 'abstractMappingRegistry.rb'
require 'soap/rpc/driver'

module WSDL
module Abstract

class AbstractService < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://localhost:8080/"
  NsAbstract = "urn:www.example.org:abstract"

  Methods = [
    [ XSD::QName.new(NsAbstract, "echo"),
      "",
      "echo",
      [ [:in, "name", ["::SOAP::SOAPString"]],
        [:in, "author", ["WSDL::Abstract::Author", "urn:www.example.org:abstract", "Author"]],
        [:retval, "return", ["WSDL::Abstract::Book", "urn:www.example.org:abstract", "Book"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ "",
      "echoLiteral",
      [ [:in, "author", ["::SOAP::SOAPElement", "urn:www.example.org:abstract", "Author"]],
        [:out, "return", ["::SOAP::SOAPElement", "urn:www.example.org:abstract", "Author"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ XSD::QName.new(NsAbstract, "echoDerived"),
      "",
      "echoDerived",
      [ [:in, "parameter", ["WSDL::Abstract::BaseClass", "urn:www.example.org:abstract", "BaseClass"]],
        [:retval, "return", ["WSDL::Abstract::BaseClass", "urn:www.example.org:abstract", "BaseClass"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = AbstractMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = AbstractMappingRegistry::LiteralRegistry
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
