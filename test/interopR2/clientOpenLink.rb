#!/usr/bin/env ruby
# encoding: UTF-8

$serverName = 'OpenLink'

$server = 'http://demo.openlinksw.com:8890/Interop'
$noEchoMap = true

require 'clientBase'

drv = SOAP::RPC::Driver.new($server, InterfaceNS)
methodDef(drv)

doTestBase(drv)
doTestGroupB(drv)
submitTestResult
