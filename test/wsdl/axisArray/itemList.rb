require 'xsd/qname'

module WSDL; module AxisArray


# {urn:jp.gr.jin.rrr.example.itemListType}Item
#   name - SOAP::SOAPString
class Item
  attr_accessor :name

  def initialize(name = nil)
    @name = name
  end
end

# {urn:jp.gr.jin.rrr.example.itemListType}ItemList
class ItemList < ::Array
end

# {urn:jp.gr.jin.rrr.example.itemListType}MeetingInfo
#   meetingId - SOAP::SOAPLong
class MeetingInfo
  attr_accessor :meetingId

  def initialize(meetingId = nil)
    @meetingId = meetingId
  end
end


end; end
