require 'rubygems'
require File.join(File.dirname(__FILE__), 'lib', 'soap', 'version')

Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = 'rtiss_soap4r'
  s.summary = "An updated implementation of SOAP 1.1 for Ruby 1.8 and 1.9. (RTISS version)"
  s.version = SOAP::VERSION::STRING
  s.rubyforge_project = 'rtiss_soap4r'

  s.author = "Laurence A. Lee, Hiroshi NAKAMURA, Fabio Kung, Igor Jancev"
  s.email = "rubyjedi@gmail.com, nahi@ruby-lang.org, fabio.kung@gmail.com, igor@masterybits.com"
  s.homepage = "https://github.com/rtiss/soap4r"

  s.add_dependency("httpclient", ">= 2.1.1")

  s.has_rdoc = false # disable rdoc generation until we've got more
  s.requirements << 'none'
  s.require_paths = %w[lib]

  s.executables = [ "wsdl2ruby.rb", "xsd2ruby.rb" ]
  s.files = Dir.glob("{bin,lib,test}/**/*").delete_if { |item| item.match( /\.(svn|git)/ ) }

  # don't reference the test until we see it execute fully and successfully
  # s.test_file = "test/runner.rb"
end

