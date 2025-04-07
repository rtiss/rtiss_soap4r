require 'itemList.rb'
require 'soap/mapping'

module WSDL; module AxisArray

module ItemListMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsJpGrJinRrrExampleItemListType = "urn:jp.gr.jin.rrr.example.itemListType"

  EncodedRegistry.register(
    :class => WSDL::AxisArray::Item,
    :schema_type => XSD::QName.new(NsJpGrJinRrrExampleItemListType, "Item"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => WSDL::AxisArray::ItemList,
    :schema_type => XSD::QName.new(NsJpGrJinRrrExampleItemListType, "ItemList"),
    :schema_element => [
      ["item", ["WSDL::AxisArray::Item[]", XSD::QName.new(nil, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => WSDL::AxisArray::MeetingInfo,
    :schema_type => XSD::QName.new(NsJpGrJinRrrExampleItemListType, "MeetingInfo"),
    :schema_element => [
      ["meetingId", ["SOAP::SOAPLong", XSD::QName.new(nil, "meetingId")]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::AxisArray::Item,
    :schema_type => XSD::QName.new(NsJpGrJinRrrExampleItemListType, "Item"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::AxisArray::ItemList,
    :schema_type => XSD::QName.new(NsJpGrJinRrrExampleItemListType, "ItemList"),
    :schema_element => [
      ["item", ["WSDL::AxisArray::Item[]", XSD::QName.new(nil, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => WSDL::AxisArray::MeetingInfo,
    :schema_type => XSD::QName.new(NsJpGrJinRrrExampleItemListType, "MeetingInfo"),
    :schema_element => [
      ["meetingId", ["SOAP::SOAPLong", XSD::QName.new(nil, "meetingId")]]
    ]
  )
end

end; end
