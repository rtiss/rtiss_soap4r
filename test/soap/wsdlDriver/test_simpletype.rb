require 'test/unit'
require 'soap/rpc/httpserver'
require 'soap/wsdlDriver'
require 'test_helper'


module SOAP


class TestSimpleType < Test::Unit::TestCase
  class Server < ::SOAP::RPC::HTTPServer
    def on_init
      add_method(self, 'echo_version', 'version')
    end
  
    def echo_version(version)
      # "2.0" is out of range.
      Version_struct.new(version || "2.0", 'checked')
    end
  end

  DIR = File.dirname(File.expand_path(__FILE__))
  require File.join(DIR, 'echo_version')

  Port = TestUtil.get_free_port

  def setup
    setup_server
    setup_client
  end

  def setup_server
    @server = Server.new(
      :BindAddress => "0.0.0.0",
      :Port => Port,
      :AccessLog => [],
      :SOAPDefaultNamespace => "urn:example.com:simpletype-rpc"
    )
    @server.level = Logger::Severity::ERROR
    @server_thread = TestUtil.start_server_thread(@server)
  end

  def setup_client
    wsdl = File.join(DIR, 'simpletype.wsdl')
    @client = ::SOAP::WSDLDriverFactory.new(wsdl).create_rpc_driver
    @client.wiredump_dev = STDOUT if $DEBUG
    @client.endpoint_url = "http://localhost:#{Port}/"
    @client.generate_explicit_type = false
  end

  def teardown
    teardown_server if @server
    teardown_client if @client
    sleep 0.5  # Allow OS to release port
  end

  def teardown_server
    @server.shutdown
    @server_thread.kill
    @server_thread.join
  end

  def teardown_client
    @client.reset_stream
  end

  def test_ping
    result = @client.echo_version("1.9")
    assert_equal("1.9", result.myversion)
    assert_equal("checked", result.msg)
    assert_raise(XSD::ValueSpaceError) do
      @client.echo_version("2.0")
    end
    assert_raise(XSD::ValueSpaceError) do
      @client.echo_version(nil) # nil => "2.0" => out of range
    end
  end
end


end
