$:.unshift File.expand_path("../lib", __FILE__)
require 'soap/version'

Gem::Specification.new do |s|
  s.name = 'rtiss_soap4r'
  s.version = SOAP::VERSION::STRING
  s.rubyforge_project = 'rtiss_soap4r'

  s.authors = "Laurence A. Lee, Hiroshi NAKAMURA, Igor Jancev"
  s.email = "rubyjedi@gmail.com, nahi@ruby-lang.org, igor@masterybits.com"
  s.homepage = "https://github.com/rtiss/rtiss_soap4r"
  s.license = "Ruby"

  s.summary     = "Soap4R-ng - Soap4R (as maintained by RubyJedi) for Ruby 1.8 thru 2.1 and beyond (RTISS version)"
  s.description = "Soap4R NextGen (as maintained by RubyJedi) for Ruby 1.8 thru 2.1 and beyond (RTISS version)"

  s.add_dependency("httpclient", "~> 2.6")
  s.add_dependency("logger-application", "~> 0.0.2")

  s.has_rdoc = false # disable rdoc generation until we've got more
  s.requirements << 'none'
  s.require_paths = %w[lib]

  s.files = `git ls-files lib bin`.split("\n")
  s.executables = [ "wsdl2ruby.rb", "xsd2ruby.rb" ]
end

