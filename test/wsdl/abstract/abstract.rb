require 'xsd/qname'

module WSDL; module Abstract


# {urn:www.example.org:abstract}Book
#   name - SOAP::SOAPString
#   author - WSDL::Abstract::Author
class Book
  attr_accessor :name
  attr_accessor :author

  def initialize(name = nil, author = nil)
    @name = name
    @author = author
  end
end

# {urn:www.example.org:abstract}Author
# abstract
#   firstname - SOAP::SOAPString
#   lastname - SOAP::SOAPString
class Author
  attr_accessor :firstname
  attr_accessor :lastname

  def initialize(firstname = nil, lastname = nil)
    @firstname = firstname
    @lastname = lastname
  end
end

# {urn:www.example.org:abstract}UserAuthor
#   firstname - SOAP::SOAPString
#   lastname - SOAP::SOAPString
#   userid - SOAP::SOAPString
class UserAuthor < Author
  attr_accessor :firstname
  attr_accessor :lastname
  attr_accessor :userid

  def initialize(firstname = nil, lastname = nil, userid = nil)
    @firstname = firstname
    @lastname = lastname
    @userid = userid
  end
end

# {urn:www.example.org:abstract}NonUserAuthor
#   firstname - SOAP::SOAPString
#   lastname - SOAP::SOAPString
#   nonuserid - SOAP::SOAPString
class NonUserAuthor < Author
  attr_accessor :firstname
  attr_accessor :lastname
  attr_accessor :nonuserid

  def initialize(firstname = nil, lastname = nil, nonuserid = nil)
    @firstname = firstname
    @lastname = lastname
    @nonuserid = nonuserid
  end
end

# {urn:www.example.org:abstract}BaseClass
#   id - SOAP::SOAPUnsignedInt
class BaseClass
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {urn:www.example.org:abstract}DerivedClass1
#   id - SOAP::SOAPUnsignedInt
#   someVar1 - SOAP::SOAPString
class DerivedClass1 < BaseClass
  attr_accessor :id
  attr_accessor :someVar1

  def initialize(id = nil, someVar1 = [])
    @id = id
    @someVar1 = someVar1
  end
end

# {urn:www.example.org:abstract}DerivedClass2
#   id - SOAP::SOAPUnsignedInt
#   someVar2 - SOAP::SOAPString
class DerivedClass2 < BaseClass
  attr_accessor :id
  attr_accessor :someVar2

  def initialize(id = nil, someVar2 = [])
    @id = id
    @someVar2 = someVar2
  end
end


end; end
