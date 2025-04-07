$:.unshift File.expand_path("../lib", __FILE__)
require 'soap/version'

Gem::Specification.new do |s|
  s.name = 'rtiss_soap4r'
  s.version = SOAP::VERSION::STRING

  s.authors = "Laurence A. Lee, Hiroshi NAKAMURA, Igor Jancev, Lara Hofer"
  s.email = "rubyjedi@gmail.com, nahi@ruby-lang.org, igor@masterybits.com, lara-hofer@gmx.net"
  s.homepage = "https://github.com/rtiss/rtiss_soap4r"
  s.license = "Ruby"

  s.summary     = "Soap4R-ng - Soap4R (as maintained by RubyJedi) for Ruby 3.2 and beyond (RTISS version)"
  s.description = "Soap4R NextGen (as maintained by RubyJedi) for 3.2 and beyond (RTISS version)"

  s.add_dependency("httpclient", "~> 2.9")
  s.add_dependency("logger-application", "~> 0.0.2")
  s.required_ruby_version = ">= 3.0"
  s.requirements << 'none'
  s.require_paths = %w[lib]

  s.files = `git ls-files lib bin`.split("\n")
  s.executables = [ "wsdl2ruby.rb", "xsd2ruby.rb" ]
end

