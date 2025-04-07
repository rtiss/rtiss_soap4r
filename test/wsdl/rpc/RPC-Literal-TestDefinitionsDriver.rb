require 'RPC-Literal-TestDefinitions.rb'
require 'RPC-Literal-TestDefinitionsMappingRegistry.rb'
require 'soap/rpc/driver'

module WSDL
module RPC

class SoapTestPortTypeRpcLit < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://www.whitemesa.net/test-rpc-lit"
  NsRpcLitTest = "http://soapbuilders.org/rpc-lit-test"

  Methods = [
    [ XSD::QName.new(NsRpcLitTest, "echoStruct"),
      "http://soapinterop.org/",
      "echoStruct",
      [ [:in, "inputStruct", ["WSDL::RPC::SOAPStruct", "http://soapbuilders.org/rpc-lit-test/types", "SOAPStruct"]],
        [:retval, "return", ["WSDL::RPC::SOAPStruct", "http://soapbuilders.org/rpc-lit-test/types", "SOAPStruct"]] ],
      { :request_style =>  :rpc, :request_use =>  :literal,
        :response_style => :rpc, :response_use => :literal,
        :faults => {} }
    ],
    [ XSD::QName.new(NsRpcLitTest, "echoStructArray"),
      "http://soapinterop.org/",
      "echoStructArray",
      [ [:in, "inputStructArray", ["WSDL::RPC::ArrayOfSOAPStruct", "http://soapbuilders.org/rpc-lit-test/types", "ArrayOfSOAPStruct"]],
        [:retval, "return", ["WSDL::RPC::ArrayOfSOAPStruct", "http://soapbuilders.org/rpc-lit-test/types", "ArrayOfSOAPStruct"]] ],
      { :request_style =>  :rpc, :request_use =>  :literal,
        :response_style => :rpc, :response_use => :literal,
        :faults => {} }
    ],
    [ XSD::QName.new(NsRpcLitTest, "echoStructAsSimpleTypes"),
      "http://soapinterop.org/",
      "echoStructAsSimpleTypes",
      [ [:in, "inputStruct", ["WSDL::RPC::SOAPStruct", "http://soapbuilders.org/rpc-lit-test/types", "SOAPStruct"]],
        [:retval, "outputString", ["::SOAP::SOAPString"]],
        [:out, "outputInteger", ["::SOAP::SOAPInt"]],
        [:out, "outputFloat", ["::SOAP::SOAPFloat"]] ],
      { :request_style =>  :rpc, :request_use =>  :literal,
        :response_style => :rpc, :response_use => :literal,
        :faults => {} }
    ],
    [ XSD::QName.new(NsRpcLitTest, "echoSimpleTypesAsStruct"),
      "http://soapinterop.org/",
      "echoSimpleTypesAsStruct",
      [ [:in, "inputString", ["::SOAP::SOAPString"]],
        [:in, "inputInteger", ["::SOAP::SOAPInt"]],
        [:in, "inputFloat", ["::SOAP::SOAPFloat"]],
        [:retval, "return", ["WSDL::RPC::SOAPStruct", "http://soapbuilders.org/rpc-lit-test/types", "SOAPStruct"]] ],
      { :request_style =>  :rpc, :request_use =>  :literal,
        :response_style => :rpc, :response_use => :literal,
        :faults => {} }
    ],
    [ XSD::QName.new(NsRpcLitTest, "echoNestedStruct"),
      "http://soapinterop.org/",
      "echoNestedStruct",
      [ [:in, "inputStruct", ["WSDL::RPC::SOAPStructStruct", "http://soapbuilders.org/rpc-lit-test/types", "SOAPStructStruct"]],
        [:retval, "return", ["WSDL::RPC::SOAPStructStruct", "http://soapbuilders.org/rpc-lit-test/types", "SOAPStructStruct"]] ],
      { :request_style =>  :rpc, :request_use =>  :literal,
        :response_style => :rpc, :response_use => :literal,
        :faults => {} }
    ],
    [ XSD::QName.new(NsRpcLitTest, "echoNestedArray"),
      "http://soapinterop.org/",
      "echoNestedArray",
      [ [:in, "inputStruct", ["WSDL::RPC::SOAPArrayStruct", "http://soapbuilders.org/rpc-lit-test/types", "SOAPArrayStruct"]],
        [:retval, "return", ["WSDL::RPC::SOAPArrayStruct", "http://soapbuilders.org/rpc-lit-test/types", "SOAPArrayStruct"]] ],
      { :request_style =>  :rpc, :request_use =>  :literal,
        :response_style => :rpc, :response_use => :literal,
        :faults => {} }
    ],
    [ XSD::QName.new(NsRpcLitTest, "echoStringArray"),
      "http://soapinterop.org/",
      "echoStringArray",
      [ [:in, "inputStringArray", ["WSDL::RPC::ArrayOfstring", "http://soapbuilders.org/rpc-lit-test/types", "ArrayOfstring"]],
        [:retval, "return", ["WSDL::RPC::ArrayOfstring", "http://soapbuilders.org/rpc-lit-test/types", "ArrayOfstring"]] ],
      { :request_style =>  :rpc, :request_use =>  :literal,
        :response_style => :rpc, :response_use => :literal,
        :faults => {} }
    ],
    [ XSD::QName.new(NsRpcLitTest, "echoStringArrayInline"),
      "http://soapinterop.org/",
      "echoStringArrayInline",
      [ [:in, "inputStringArray", ["WSDL::RPC::ArrayOfstringInline", "http://soapbuilders.org/rpc-lit-test/types", "ArrayOfstringInline"]],
        [:retval, "return", ["WSDL::RPC::ArrayOfstringInline", "http://soapbuilders.org/rpc-lit-test/types", "ArrayOfstringInline"]] ],
      { :request_style =>  :rpc, :request_use =>  :literal,
        :response_style => :rpc, :response_use => :literal,
        :faults => {} }
    ],
    [ XSD::QName.new(NsRpcLitTest, "echoIntegerArray"),
      "http://soapinterop.org/",
      "echoIntegerArray",
      [ [:in, "inputIntegerArray", ["WSDL::RPC::ArrayOfint", "http://soapbuilders.org/rpc-lit-test/types", "ArrayOfint"]],
        [:retval, "return", ["WSDL::RPC::ArrayOfint", "http://soapbuilders.org/rpc-lit-test/types", "ArrayOfint"]] ],
      { :request_style =>  :rpc, :request_use =>  :literal,
        :response_style => :rpc, :response_use => :literal,
        :faults => {} }
    ],
    [ XSD::QName.new(NsRpcLitTest, "echoBoolean"),
      "http://soapinterop.org/",
      "echoBoolean",
      [ [:in, "inputBoolean", ["::SOAP::SOAPBoolean"]],
        [:retval, "return", ["::SOAP::SOAPBoolean"]] ],
      { :request_style =>  :rpc, :request_use =>  :literal,
        :response_style => :rpc, :response_use => :literal,
        :faults => {} }
    ],
    [ XSD::QName.new(NsRpcLitTest, "echoString"),
      "http://soapinterop.org/",
      "echoString",
      [ [:in, "inputString", ["::SOAP::SOAPString"]],
        [:retval, "return", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :literal,
        :response_style => :rpc, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = RPCLiteralTestDefinitionsMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = RPCLiteralTestDefinitionsMappingRegistry::LiteralRegistry
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
