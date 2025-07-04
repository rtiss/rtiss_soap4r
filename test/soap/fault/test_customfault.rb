require 'test/unit'
require 'soap/rpc/driver'
require 'soap/rpc/standaloneServer'
require 'test_helper'

module SOAP
module Fault


class TestCustomFault < Test::Unit::TestCase
  Port = TestUtil.get_free_port

  class CustomFaultServer < SOAP::RPC::StandaloneServer
    def on_init
      add_method(self, 'fault', 'msg')
    end

    def fault(msg)
      SOAPFault.new(SOAPString.new("mycustom"),
        SOAPString.new("error: #{msg}"),
        SOAPString.new(self.class.name))
    end
  end

  def setup
    @server = CustomFaultServer.new('customfault', 'urn:customfault', '0.0.0.0', Port)
    @server.level = Logger::Severity::ERROR
    @t = Thread.new {
      Thread.current.abort_on_exception = true
      @server.start
    }
    @endpoint = "http://localhost:#{Port}/"
    @client = SOAP::RPC::Driver.new(@endpoint, 'urn:customfault')
    @client.wiredump_dev = STDERR if $DEBUG
    @client.add_method("fault", "msg")
  end

  def teardown
    @server.shutdown if @server
    if @t
      @t.kill
      @t.join
    end
    @client.reset_stream if @client
  end

  def test_custom_fault
    begin
      @client.fault("message")
      assert(false, 'exception not raised')
    rescue SOAP::FaultError => e
      assert(true, 'exception raised')
      assert_equal('error: message', e.message)
    end
  end
end


end
end
