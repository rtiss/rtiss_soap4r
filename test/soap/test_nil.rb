require 'test/unit'
require 'soap/rpc/standaloneServer'
require 'soap/rpc/driver'
require 'soap/header/handler'
require 'test_helper'

module SOAP


class TestNil < Test::Unit::TestCase
  Port = TestUtil.get_free_port

  class NilServer < SOAP::RPC::StandaloneServer
    def initialize(*arg)
      super
      add_method(self, 'nop')
    end

    def nop
      1
    end
  end

  def setup
    @server = NilServer.new(self.class.name, nil, '0.0.0.0', Port)
    @server.level = Logger::Severity::ERROR
    @t = Thread.new {
      @server.start
    }
    @endpoint = "http://localhost:#{Port}/"
    @client = SOAP::RPC::Driver.new(@endpoint)
    @client.add_rpc_method('nop')
  end

  def teardown
    @server.shutdown if @server
    if @t
      @t.kill
      @t.join
    end
    @client.reset_stream if @client
  end

  require 'rexml/document'
  # emulates SOAP::Lite's nil request
  def test_soaplite_nil
    xml = <<-__XML__
    <nop xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
         xmlns:xsd="http://www.w3.org/2001/XMLSchema"
         xsi:nil="true"/>
  __XML__

    body = SOAP::SOAPBody.new(REXML::Document.new(xml))
    @client.wiredump_dev = STDOUT if $DEBUG
    header, body = @client.invoke(nil, body)
    assert_equal(1, body.root_node["return"].data)
  end
end


end
