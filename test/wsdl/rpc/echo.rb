require 'xsd/qname'

module Prefix


# {urn:rpc-type}person
#   family_name - SOAP::SOAPString
#   given_name - SOAP::SOAPString
#   age - SOAP::SOAPLong
#   gender - Prefix::Gender
#   link - Prefix::Person
class Person
  attr_accessor :family_name
  attr_accessor :given_name
  attr_accessor :age
  attr_accessor :gender
  attr_accessor :link

  def initialize(family_name = nil, given_name = nil, age = nil, gender = nil, link = nil)
    @family_name = family_name
    @given_name = given_name
    @age = age
    @gender = gender
    @link = link
  end
end

# {urn:rpc-type}gender
class Gender < ::String
  F = new("F")
  M = new("M")
end


end
