require 'xsd/qname'

# {urn:complexContent.type}Base
#   id - SOAP::SOAPString
#   type - SOAP::SOAPString
class Base
  attr_accessor :id
  attr_accessor :type

  def initialize(id = nil, type = nil)
    @id = id
    @type = type
  end
end

# {urn:complexContent.type}Derived
#   id - SOAP::SOAPString
#   type - SOAP::SOAPString
#   name - SOAP::SOAPString
class Derived < Base
  attr_accessor :id
  attr_accessor :type
  attr_accessor :name

  def initialize(id = nil, type = nil, name = nil)
    @id = id
    @type = type
    @name = name
  end
end

# {urn:complexContent}echo
#   item - Derived
class Echo
  attr_accessor :item

  def initialize(item = nil)
    @item = item
  end
end
