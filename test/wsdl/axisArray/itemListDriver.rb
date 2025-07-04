require 'itemList.rb'
require 'itemListMappingRegistry.rb'
require 'soap/rpc/driver'

module WSDL
module AxisArray

class ItemListPortType < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://localhost:10080/"
  NsJpGrJinRrrExampleItemList = "urn:jp.gr.jin.rrr.example.itemList"

  Methods = [
    [ XSD::QName.new(NsJpGrJinRrrExampleItemList, "listItem"),
      "",
      "listItem",
      [ [:retval, "list", ["WSDL::AxisArray::ItemList", "urn:jp.gr.jin.rrr.example.itemListType", "ItemList"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsJpGrJinRrrExampleItemList, "getMeetingInfo"),
      "",
      "getMeetingInfo",
      [ [:retval, "getMeetingInfoReturn", ["WSDL::AxisArray::MeetingInfo", "urn:jp.gr.jin.rrr.example.itemListType", "MeetingInfo"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = ItemListMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = ItemListMappingRegistry::LiteralRegistry
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
