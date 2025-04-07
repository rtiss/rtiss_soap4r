require 'echo.rb'


module WSDL; module Any

class Echo_port_type
  # SYNOPSIS
  #   echo(parameters)
  #
  # ARGS
  #   parameters      FooBar - {urn:example.com:echo-type}foo.bar
  #
  # RETURNS
  #   parameters      FooBar - {urn:example.com:echo-type}foo.bar
  #
  def echo(parameters)
    p [parameters]
    raise NotImplementedError.new
  end

  # SYNOPSIS
  #   echoAny
  #
  # ARGS
  #   N/A
  #
  # RETURNS
  #   echoany_return  AnyType - {http://www.w3.org/2001/XMLSchema}anyType
  #
  def echoAny()
    p []
    raise NotImplementedError.new
  end

  # SYNOPSIS
  #   setOutputAndComplete(parameters)
  #
  # ARGS
  #   parameters      SetOutputAndCompleteRequest - {urn:example.com:echo-type}setOutputAndCompleteRequest
  #
  # RETURNS
  #   parameters      SetOutputAndCompleteRequest - {urn:example.com:echo-type}setOutputAndCompleteRequest
  #
  def setOutputAndComplete(parameters)
    p [parameters]
    raise NotImplementedError.new
  end
end



end; end
