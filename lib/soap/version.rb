# encoding: UTF-8
module SOAP
  module VERSION #:nodoc:
    MAJOR = 3
    MINOR = 0
    TINY  = 0
    STRING = [MAJOR, MINOR, TINY, 'beta'].join('.')
    
    FORK  = "SOAP4R-NG"
    FORK_STRING = "#{SOAP::VERSION::FORK}/#{SOAP::VERSION::STRING}"
  end
end
