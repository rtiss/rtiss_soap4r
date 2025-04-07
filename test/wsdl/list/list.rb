require 'xsd/qname'

module WSDL; module List


# {urn:list}langlistinline
#   contains list of Langlistinline::*
class Langlistinline < ::Array
  Inlineperl = "inlineperl"
  Inlinepython = "inlinepython"
  Inlineruby = "inlineruby"
  Inlinesmalltalk = "inlinesmalltalk"
end

# {urn:list}language
class Language < ::String
  Perl = new("perl")
  Python = new("python")
  Ruby = new("ruby")
  Smalltalk = new("smalltalk")
end

# {urn:list}langlist
#   contains list of Language::*
class Langlist < ::Array
end

# {urn:list}echoele
#   e1 - (any)
#   e2 - (any)
class Echoele
  attr_accessor :e1
  attr_accessor :e2

  def initialize(e1 = nil, e2 = nil)
    @e1 = e1
    @e2 = e2
  end
end

# {urn:list}echo_response
#   e1 - (any)
#   e2 - (any)
class Echo_response
  attr_accessor :e1
  attr_accessor :e2

  def initialize(e1 = nil, e2 = nil)
    @e1 = e1
    @e2 = e2
  end
end


end; end
