require 'test/unit'
require 'soap/rpc/httpserver'
require 'soap/rpc/driver'
require 'test_helper'

module SOAP; module Struct


class TestStruct < Test::Unit::TestCase
  Namespace = "urn:example.com:simpletype-rpc"
  class Server < ::SOAP::RPC::HTTPServer
    @@test_struct = ::Struct.new(:one, :two)

    def on_init
      add_method(self, 'a_method')
    end
  
    def a_method
      @@test_struct.new("string", 1)
    end
  end

  Port = TestUtil.get_free_port

  def setup
    setup_server
    setup_client
  end

  def setup_server
    @server = Server.new(
      :Port => Port,
      :BindAddress => "0.0.0.0",
      :AccessLog => [],
      :SOAPDefaultNamespace => Namespace
    )
    @server.level = Logger::Severity::ERROR
    @server_thread = TestUtil.start_server_thread(@server)
  end

  def setup_client
    @client = ::SOAP::RPC::Driver.new("http://localhost:#{Port}/", Namespace)
    @client.wiredump_dev = STDERR if $DEBUG
    @client.add_method('a_method')
  end

  def teardown
    teardown_server if @server
    teardown_client if @client
  end

  def teardown_server
    @server.shutdown
    @server_thread.kill
    @server_thread.join
  end

  def teardown_client
    @client.reset_stream
  end

  def test_struct
    assert_equal("string", @client.a_method.one)
    assert_equal(1, @client.a_method.two)
  end
end


end; end
