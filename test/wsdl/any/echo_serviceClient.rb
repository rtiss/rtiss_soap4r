#!/usr/bin/env ruby
require 'echoDriver.rb'


module WSDL; module Any

endpoint_url = ARGV.shift
obj = Echo_port_type.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   echo(parameters)
#
# ARGS
#   parameters      FooBar - {urn:example.com:echo-type}foo.bar
#
# RETURNS
#   parameters      FooBar - {urn:example.com:echo-type}foo.bar
#
parameters = nil
puts obj.echo(parameters)

# SYNOPSIS
#   echoAny
#
# ARGS
#   N/A
#
# RETURNS
#   echoany_return  AnyType - {http://www.w3.org/2001/XMLSchema}anyType
#

puts obj.echoAny

# SYNOPSIS
#   setOutputAndComplete(parameters)
#
# ARGS
#   parameters      SetOutputAndCompleteRequest - {urn:example.com:echo-type}setOutputAndCompleteRequest
#
# RETURNS
#   parameters      SetOutputAndCompleteRequest - {urn:example.com:echo-type}setOutputAndCompleteRequest
#
parameters = nil
puts obj.setOutputAndComplete(parameters)




end; end
