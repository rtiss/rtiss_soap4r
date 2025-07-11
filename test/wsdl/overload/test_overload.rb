require 'test/unit'
require 'wsdl/parser'
require 'wsdl/soap/wsdl2ruby'
require 'soap/rpc/standaloneServer'
require 'soap/wsdlDriver'
require 'test_helper'


module WSDL; module Overload


class TestOverload < Test::Unit::TestCase
  TNS = "urn:overload"

  Methods = [
    [
      XSD::QName.new(TNS, 'methodAlpha'), "methodAlpha1", "method_alpha_1",
      [ [:in, "in0", ["::SOAP::SOAPString"]],
        [:in, "in1", ["::SOAP::SOAPString"]],
        [:in, "in2", ["::SOAP::SOAPString"]],
        [:retval, "methodAlphaReturn", ["::SOAP::SOAPLong"]] ]
    ], 
    [
      XSD::QName.new(TNS, 'methodAlpha'), "methodAlpha2", "method_alpha_2",
      [ [:in, "in0", ["::SOAP::SOAPString"]],
        [:in, "in1", ["::SOAP::SOAPString"]],
        [:retval, "methodAlphaReturn", ["::SOAP::SOAPLong"]] ]
    ]
  ]

  class Server < ::SOAP::RPC::StandaloneServer
    def on_init
      TestOverload::Methods.each do |definition|
        add_rpc_operation(self, *definition)
      end
    end
  
    def method_alpha_1(in0, in1, in2)
      3
    end
  
    def method_alpha_2(in0, in1)
      2
    end
  end

  DIR = File.dirname(File.expand_path(__FILE__))

  Port = TestUtil.get_free_port

  def setup
    setup_server
    setup_classdef
    @client = nil
  end

  def teardown
    teardown_server if @server
    unless $DEBUG
      File.unlink(pathname('default.rb'))
      File.unlink(pathname('defaultMappingRegistry.rb'))
      File.unlink(pathname('defaultDriver.rb'))
      File.unlink(pathname('defaultServant.rb'))
      File.unlink(pathname('OverloadServiceClient.rb'))
    end
    @client.reset_stream if @client
  end

  def setup_server
    @server = Server.new('Test', "urn:rpc", '0.0.0.0', Port)
    @server.level = Logger::Severity::ERROR
    @server_thread = TestUtil.start_server_thread(@server)
  end

  def setup_classdef
    gen = WSDL::SOAP::WSDL2Ruby.new
    gen.location = pathname("overload.wsdl")
    gen.basedir = DIR
    gen.logger.level = Logger::FATAL
    gen.opt['classdef'] = nil
    gen.opt['mapping_registry'] = nil
    gen.opt['driver'] = nil
    gen.opt['servant_skelton'] = nil
    gen.opt['client_skelton'] = nil
    gen.opt['force'] = true
    gen.run
    TestUtil.require(DIR, 'default.rb')
  end

  def teardown_server
    @server.shutdown
    @server_thread.kill
    @server_thread.join
  end

  def pathname(filename)
    File.join(DIR, filename)
  end

  def test_compare
    compare("expectedDriver.rb", "defaultDriver.rb")
    compare("expectedServant.rb", "defaultServant.rb")
    compare("expectedClient.rb", "OverloadServiceClient.rb")
  end

  def test_wsdl
    wsdl = File.join(DIR, 'overload.wsdl')
    @client = ::SOAP::WSDLDriverFactory.new(wsdl).create_rpc_driver
    @client.endpoint_url = "http://localhost:#{Port}/"
    @client.wiredump_dev = STDOUT if $DEBUG
    assert_equal(3, @client.call("methodAlpha1", "1", "2", "3"))
    assert_equal(2, @client.call("methodAlpha2", "1", "2"))
  end

  def test_native
    @client = ::SOAP::RPC::Driver.new("http://localhost:#{Port}/")
    Methods.each do |definition|
      @client.add_rpc_operation(*definition)
    end
    @client.wiredump_dev = STDOUT if $DEBUG
    assert_equal(3, @client.call("methodAlpha1", "1", "2", "3"))
    assert_equal(2, @client.call("methodAlpha2", "1", "2"))
  end

  def compare(expected, actual)
    TestUtil.filecompare(pathname(expected), pathname(actual))
  end
end


end; end
