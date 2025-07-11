require 'soap/rpc/cgistub'

class CalcServer < SOAP::RPC::CGIStub
  def initialize(*arg)
    super

    require_relative 'calc.rb'
    servant = CalcService
    add_servant(servant, 'http://tempuri.org/calcService')
  end
end

status = CalcServer.new('CalcServer', nil).start
