#!/usr/bin/env ruby
require 'AddServant.rb'
require 'AddMappingRegistry.rb'
require 'soap/rpc/standaloneServer'

module WSDL; module Fault

class AddPortType
  Methods = [
    [ "Add",
      "add",
      [ [:in, "request", ["::SOAP::SOAPElement", "http://fault.test/Faulttest", "Add"]],
        [:out, "response", ["::SOAP::SOAPElement", "http://fault.test/Faulttest", "AddResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"WSDL::Fault::AddFault"=>{:ns=>"http://fault.test/Faulttest", :name=>"AddFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}, "WSDL::Fault::NegativeValueFault"=>{:ns=>"http://fault.test/Faulttest", :name=>"NegativeValueFault", :namespace=>nil, :use=>"literal", :encodingstyle=>"document"}} }
    ]
  ]
end

end; end

module WSDL; module Fault

class AddPortTypeApp < ::SOAP::RPC::StandaloneServer
  def initialize(*arg)
    super(*arg)
    servant = WSDL::Fault::AddPortType.new
    WSDL::Fault::AddPortType::Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        @router.add_document_operation(servant, *definitions)
      else
        @router.add_rpc_operation(servant, *definitions)
      end
    end
    self.mapping_registry = AddMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = AddMappingRegistry::LiteralRegistry
  end
end

end; end

if $0 == __FILE__
  # Change listen port.
  server = WSDL::Fault::AddPortTypeApp.new('app', nil, '0.0.0.0', 10080)
  trap(:INT) do
    server.shutdown
  end
  server.start
end
