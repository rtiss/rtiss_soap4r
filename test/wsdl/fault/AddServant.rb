require 'Add.rb'


module WSDL; module Fault

class AddPortType
  # SYNOPSIS
  #   add(request)
  #
  # ARGS
  #   request         Add - {http://fault.test/Faulttest}Add
  #
  # RETURNS
  #   response        AddResponse - {http://fault.test/Faulttest}AddResponse
  #
  # RAISES
  #   fault           AddFault - {http://fault.test/Faulttest}AddFault
  #   fault           NegativeValueFault - {http://fault.test/Faulttest}NegativeValueFault
  #
  def add(request)
    p [request]
    raise NotImplementedError.new
  end
end



end; end
