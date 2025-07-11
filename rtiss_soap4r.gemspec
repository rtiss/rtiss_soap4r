# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: rtiss_soap4r 3.0.0.beta ruby lib

Gem::Specification.new do |s|
  s.name = "rtiss_soap4r".freeze
  s.version = "3.0.0.beta".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Laurence A. Lee".freeze, "Hiroshi NAKAMURA".freeze, "Igor Jancev".freeze, "Lara Hofer".freeze]
  s.date = "1980-01-02"
  s.description = "Ruby 3.2 compatible soap4r library".freeze
  s.executables = ["wsdl2ruby.rb".freeze, "xsd2ruby.rb".freeze]
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".codeclimate.yml",
    ".envrc",
    ".ruby-version",
    ".travis.yml",
    "COPYING",
    "GPL",
    "Gemfile",
    "Gemfile.lock",
    "README.md",
    "RELEASE_en.html",
    "RUBYS",
    "Rakefile",
    "bin/wsdl2ruby.rb",
    "bin/xsd2ruby.rb",
    "gemfiles/httpclient.gemfile",
    "install.rb",
    "lib/soap/attachment.rb",
    "lib/soap/attrproxy.rb",
    "lib/soap/baseData.rb",
    "lib/soap/element.rb",
    "lib/soap/encodingstyle/aspDotNetHandler.rb",
    "lib/soap/encodingstyle/handler.rb",
    "lib/soap/encodingstyle/literalHandler.rb",
    "lib/soap/encodingstyle/soapHandler.rb",
    "lib/soap/filter.rb",
    "lib/soap/filter/filterchain.rb",
    "lib/soap/filter/handler.rb",
    "lib/soap/filter/streamhandler.rb",
    "lib/soap/generator.rb",
    "lib/soap/header/handler.rb",
    "lib/soap/header/handlerset.rb",
    "lib/soap/header/mappinghandler.rb",
    "lib/soap/header/simplehandler.rb",
    "lib/soap/http_logger.rb",
    "lib/soap/httpconfigloader.rb",
    "lib/soap/mapping.rb",
    "lib/soap/mapping/encodedregistry.rb",
    "lib/soap/mapping/factory.rb",
    "lib/soap/mapping/literalregistry.rb",
    "lib/soap/mapping/mapping.rb",
    "lib/soap/mapping/registry.rb",
    "lib/soap/mapping/rubytypeFactory.rb",
    "lib/soap/mapping/schemadefinition.rb",
    "lib/soap/mapping/typeMap.rb",
    "lib/soap/mapping/wsdlencodedregistry.rb",
    "lib/soap/mapping/wsdlliteralregistry.rb",
    "lib/soap/marshal.rb",
    "lib/soap/mimemessage.rb",
    "lib/soap/nestedexception.rb",
    "lib/soap/netHttpClient.rb",
    "lib/soap/ns.rb",
    "lib/soap/parser.rb",
    "lib/soap/processor.rb",
    "lib/soap/property.rb",
    "lib/soap/proxy.rb",
    "lib/soap/rpc/cgistub.rb",
    "lib/soap/rpc/driver.rb",
    "lib/soap/rpc/element.rb",
    "lib/soap/rpc/element.rb.orig",
    "lib/soap/rpc/httpserver.rb",
    "lib/soap/rpc/methodDef.rb",
    "lib/soap/rpc/proxy.rb",
    "lib/soap/rpc/router.rb",
    "lib/soap/rpc/rpc.rb",
    "lib/soap/rpc/soaplet.rb",
    "lib/soap/rpc/standaloneServer.rb",
    "lib/soap/soap.rb",
    "lib/soap/streamHandler.rb",
    "lib/soap/version.rb",
    "lib/soap/wsdlDriver.rb",
    "lib/wsdl/binding.rb",
    "lib/wsdl/data.rb",
    "lib/wsdl/definitions.rb",
    "lib/wsdl/documentation.rb",
    "lib/wsdl/import.rb",
    "lib/wsdl/importer.rb",
    "lib/wsdl/info.rb",
    "lib/wsdl/message.rb",
    "lib/wsdl/operation.rb",
    "lib/wsdl/operationBinding.rb",
    "lib/wsdl/param.rb",
    "lib/wsdl/parser.rb",
    "lib/wsdl/part.rb",
    "lib/wsdl/port.rb",
    "lib/wsdl/portType.rb",
    "lib/wsdl/service.rb",
    "lib/wsdl/soap/address.rb",
    "lib/wsdl/soap/binding.rb",
    "lib/wsdl/soap/body.rb",
    "lib/wsdl/soap/cgiStubCreator.rb",
    "lib/wsdl/soap/classDefCreator.rb",
    "lib/wsdl/soap/classDefCreatorSupport.rb",
    "lib/wsdl/soap/classNameCreator.rb",
    "lib/wsdl/soap/clientSkeltonCreator.rb",
    "lib/wsdl/soap/complexType.rb",
    "lib/wsdl/soap/data.rb",
    "lib/wsdl/soap/definitions.rb",
    "lib/wsdl/soap/driverCreator.rb",
    "lib/wsdl/soap/element.rb",
    "lib/wsdl/soap/encodedMappingRegistryCreator.rb",
    "lib/wsdl/soap/fault.rb",
    "lib/wsdl/soap/header.rb",
    "lib/wsdl/soap/headerfault.rb",
    "lib/wsdl/soap/literalMappingRegistryCreator.rb",
    "lib/wsdl/soap/mappingRegistryCreator.rb",
    "lib/wsdl/soap/mappingRegistryCreatorSupport.rb",
    "lib/wsdl/soap/methodDefCreator.rb",
    "lib/wsdl/soap/operation.rb",
    "lib/wsdl/soap/servantSkeltonCreator.rb",
    "lib/wsdl/soap/servletStubCreator.rb",
    "lib/wsdl/soap/standaloneServerStubCreator.rb",
    "lib/wsdl/soap/wsdl2ruby.rb",
    "lib/wsdl/types.rb",
    "lib/wsdl/wsdl.rb",
    "lib/wsdl/xmlSchema/all.rb",
    "lib/wsdl/xmlSchema/annotation.rb",
    "lib/wsdl/xmlSchema/any.rb",
    "lib/wsdl/xmlSchema/anyAttribute.rb",
    "lib/wsdl/xmlSchema/attribute.rb",
    "lib/wsdl/xmlSchema/attributeGroup.rb",
    "lib/wsdl/xmlSchema/choice.rb",
    "lib/wsdl/xmlSchema/complexContent.rb",
    "lib/wsdl/xmlSchema/complexExtension.rb",
    "lib/wsdl/xmlSchema/complexRestriction.rb",
    "lib/wsdl/xmlSchema/complexType.rb",
    "lib/wsdl/xmlSchema/content.rb",
    "lib/wsdl/xmlSchema/data.rb",
    "lib/wsdl/xmlSchema/element.rb",
    "lib/wsdl/xmlSchema/enumeration.rb",
    "lib/wsdl/xmlSchema/fractiondigits.rb",
    "lib/wsdl/xmlSchema/group.rb",
    "lib/wsdl/xmlSchema/import.rb",
    "lib/wsdl/xmlSchema/importHandler.rb",
    "lib/wsdl/xmlSchema/importer.rb",
    "lib/wsdl/xmlSchema/include.rb",
    "lib/wsdl/xmlSchema/length.rb",
    "lib/wsdl/xmlSchema/list.rb",
    "lib/wsdl/xmlSchema/maxexclusive.rb",
    "lib/wsdl/xmlSchema/maxinclusive.rb",
    "lib/wsdl/xmlSchema/maxlength.rb",
    "lib/wsdl/xmlSchema/minexclusive.rb",
    "lib/wsdl/xmlSchema/mininclusive.rb",
    "lib/wsdl/xmlSchema/minlength.rb",
    "lib/wsdl/xmlSchema/parser.rb",
    "lib/wsdl/xmlSchema/pattern.rb",
    "lib/wsdl/xmlSchema/ref.rb",
    "lib/wsdl/xmlSchema/schema.rb",
    "lib/wsdl/xmlSchema/sequence.rb",
    "lib/wsdl/xmlSchema/simpleContent.rb",
    "lib/wsdl/xmlSchema/simpleExtension.rb",
    "lib/wsdl/xmlSchema/simpleRestriction.rb",
    "lib/wsdl/xmlSchema/simpleType.rb",
    "lib/wsdl/xmlSchema/totaldigits.rb",
    "lib/wsdl/xmlSchema/union.rb",
    "lib/wsdl/xmlSchema/unique.rb",
    "lib/wsdl/xmlSchema/whitespace.rb",
    "lib/wsdl/xmlSchema/xsd2ruby.rb",
    "lib/xsd/charset.rb",
    "lib/xsd/codegen.rb",
    "lib/xsd/codegen/classdef.rb",
    "lib/xsd/codegen/commentdef.rb",
    "lib/xsd/codegen/gensupport.rb",
    "lib/xsd/codegen/methoddef.rb",
    "lib/xsd/codegen/moduledef.rb",
    "lib/xsd/datatypes.rb",
    "lib/xsd/datatypes1999.rb",
    "lib/xsd/iconvcharset.rb",
    "lib/xsd/mapping.rb",
    "lib/xsd/namedelements.rb",
    "lib/xsd/ns.rb",
    "lib/xsd/qname.rb",
    "lib/xsd/xmlparser.rb",
    "lib/xsd/xmlparser.rb.orig",
    "lib/xsd/xmlparser/libxmlparser.rb",
    "lib/xsd/xmlparser/parser.rb",
    "lib/xsd/xmlparser/rexmlparser.rb",
    "lib/xsd/xmlparser/xmlparser.rb",
    "lib/xsd/xmlparser/xmlscanner.rb",
    "rtiss_soap4r.gemspec",
    "rubyStyle.css",
    "sample/attachment/complexmime/EdmService.rb",
    "sample/attachment/complexmime/README.txt",
    "sample/attachment/complexmime/client.rb",
    "sample/attachment/complexmime/drift.cdf",
    "sample/attachment/complexmime/plaatje.png",
    "sample/attachment/complexmime/server.rb",
    "sample/attachment/swa/client.rb",
    "sample/attachment/swa/server.rb",
    "sample/basic/apacheClient.rb",
    "sample/basic/babelfish.rb",
    "sample/basic/calc/calc.rb",
    "sample/basic/calc/calc2.rb",
    "sample/basic/calc/client.rb",
    "sample/basic/calc/client2.rb",
    "sample/basic/calc/httpd.rb",
    "sample/basic/calc/samplehttpd.conf",
    "sample/basic/calc/server.cgi",
    "sample/basic/calc/server.fcgi",
    "sample/basic/calc/server.rb",
    "sample/basic/calc/server2.rb",
    "sample/basic/exchange/client.rb",
    "sample/basic/exchange/exchange.rb",
    "sample/basic/exchange/httpd.rb",
    "sample/basic/exchange/samplehttpd.conf",
    "sample/basic/exchange/server.cgi",
    "sample/basic/exchange/server.rb",
    "sample/basic/flickr.rb",
    "sample/basic/helloworld/client.rb",
    "sample/basic/helloworld/server.rb",
    "sample/basic/sampleStruct/client.rb",
    "sample/basic/sampleStruct/httpd.rb",
    "sample/basic/sampleStruct/iSampleStruct.rb",
    "sample/basic/sampleStruct/sampleStruct.rb",
    "sample/basic/sampleStruct/samplehttpd.conf",
    "sample/basic/sampleStruct/server.cgi",
    "sample/basic/sampleStruct/server.rb",
    "sample/basic/whois.rb",
    "sample/basic/wsdl_helloworld/README",
    "sample/basic/wsdl_helloworld/client/default.rb",
    "sample/basic/wsdl_helloworld/client/defaultDriver.rb",
    "sample/basic/wsdl_helloworld/client/hws.wsdl",
    "sample/basic/wsdl_helloworld/client/hwsClient.rb",
    "sample/basic/wsdl_helloworld/server/hw_s.rb",
    "sample/basic/wsdl_helloworld/server/hws.wsdl",
    "sample/basic/yahooNewsSearch.rb",
    "sample/howto/as_xml/client.rb",
    "sample/howto/as_xml/server.rb",
    "sample/howto/base64/client.rb",
    "sample/howto/base64/server.rb",
    "sample/howto/custom_ns/client.rb",
    "sample/howto/custom_ns/server.rb",
    "sample/howto/documentliteral/README.txt",
    "sample/howto/documentliteral/client.rb",
    "sample/howto/documentliteral/echo.wsdl",
    "sample/howto/documentliteral/servant.rb",
    "sample/howto/filter/client.rb",
    "sample/howto/filter/server.rb",
    "sample/howto/scopesample/client.rb",
    "sample/howto/scopesample/httpd.rb",
    "sample/howto/scopesample/samplehttpd.conf",
    "sample/howto/scopesample/servant.rb",
    "sample/howto/scopesample/server.cgi",
    "sample/howto/scopesample/server.rb",
    "sample/howto/styleuse/client.rb",
    "sample/howto/styleuse/server.rb",
    "sample/howto/wsdl_fault/README.txt",
    "sample/howto/wsdl_fault/fault/AddClient.rb",
    "sample/howto/wsdl_fault/fault/AddServer.rb",
    "sample/howto/wsdl_fault/fault/AddServiceImpl.rb",
    "sample/howto/wsdl_fault/fault/fault.wsdl",
    "sample/howto/wsdl_fault/multifault/AddClient.rb",
    "sample/howto/wsdl_fault/multifault/AddServer.rb",
    "sample/howto/wsdl_fault/multifault/AddServiceImpl.rb",
    "sample/howto/wsdl_fault/multifault/fault.wsdl",
    "sample/howto/wsdl_hash/client.rb",
    "sample/howto/wsdl_hash/hash.wsdl",
    "sample/howto/wsdl_hash/server.rb",
    "sample/marshal/customfactory.rb",
    "sample/marshal/customregistry.rb",
    "sample/marshal/digraph.rb",
    "sample/marshal/enum/README.txt",
    "sample/marshal/enum/enum.xsd",
    "sample/marshal/enum/enumsample.rb",
    "sample/marshal/enum/enumsample_mapper.rb",
    "sample/marshal/enum/enumsample_mapping_registry.rb",
    "sample/marshal/enum/marshal.rb",
    "sample/payload/basicauth/client.rb",
    "sample/payload/basicauth/htpasswd",
    "sample/payload/basicauth/server.rb",
    "sample/payload/cookies/calc.rb",
    "sample/payload/cookies/client.rb",
    "sample/payload/cookies/filterclient.rb",
    "sample/payload/cookies/server.rb",
    "sample/payload/gzipped/client.rb",
    "sample/payload/gzipped/server.rb",
    "sample/payload/ssl/files/README",
    "sample/payload/ssl/files/ca.cert",
    "sample/payload/ssl/files/client.cert",
    "sample/payload/ssl/files/client.key",
    "sample/payload/ssl/files/server.cert",
    "sample/payload/ssl/files/server.key",
    "sample/payload/ssl/files/sslclient.properties",
    "sample/payload/ssl/files/sslclient_require_noserverauth.properties",
    "sample/payload/ssl/files/sslclient_with_clientauth.properties",
    "sample/payload/ssl/files/subca.cert",
    "sample/payload/ssl/sslclient.rb",
    "sample/payload/ssl/sslclient_require_noserverauth.rb",
    "sample/payload/ssl/sslclient_with_clientauth.rb",
    "sample/payload/ssl/sslserver.rb",
    "sample/payload/ssl/sslserver_noauth.rb",
    "sample/payload/ssl/sslserver_require_clientauth.rb",
    "sample/showcase/soap/hippo5tq/hippo5tq.rb",
    "sample/showcase/soap/hippo5tq/hippo5tq2.rb",
    "sample/showcase/soap/hippo5tq/hippoClient.rb",
    "sample/showcase/soap/icd/IICD.rb",
    "sample/showcase/soap/icd/icd.rb",
    "sample/showcase/soap/mssoap/README.txt",
    "sample/showcase/soap/mssoap/client.vba",
    "sample/showcase/soap/mssoap/stockQuoteService.cgi",
    "sample/showcase/soap/mssoap/stockQuoteService.rb",
    "sample/showcase/soap/mssoap/stockQuoteService.wsdl",
    "sample/showcase/soap/mssoap/stockQuoteServiceClient.rb",
    "sample/showcase/soap/mssoap/stockQuoteServiceClient.xls",
    "sample/showcase/soap/mssoap/stockQuoteServicePortTypeDriver.rb",
    "sample/showcase/soap/netDicV06/INetDicV06.rb",
    "sample/showcase/soap/netDicV06/netDicV06.rb",
    "sample/showcase/soap/raa/SOAP__Lite.pl",
    "sample/showcase/soap/raa/pocketSOAP.js",
    "sample/showcase/soap/raa2.4/raa.rb",
    "sample/showcase/soap/raa2.4/raa.wsdl",
    "sample/showcase/soap/raa2.4/raaDriver.rb",
    "sample/showcase/soap/raa2.4/raaServiceClient.rb",
    "sample/showcase/soap/raa2.4/sample.rb",
    "sample/showcase/soap/rwiki/rwikiClient.rb",
    "sample/showcase/soap/rwiki/rwikiServer.cgi",
    "sample/showcase/soap/soapbox/ContactsDataSet.xml",
    "sample/showcase/soap/soapbox/ExceptionDataSet.xml",
    "sample/showcase/soap/soapbox/MessageDataSet.xml",
    "sample/showcase/soap/soapbox/SoapBoxWebService.wsdl",
    "sample/showcase/soap/soapbox/SoapBoxWebServiceWithRawXML.wsdl",
    "sample/showcase/soap/soapbox/wsdlDriver.rb",
    "sample/showcase/wsdl/PayPalSvc/client.rb",
    "sample/showcase/wsdl/amazon/AmazonSearch.rb",
    "sample/showcase/wsdl/amazon/AmazonSearchDriver.rb",
    "sample/showcase/wsdl/amazon/sampleClient.rb",
    "sample/showcase/wsdl/amazon/wsdlDriver.rb",
    "sample/showcase/wsdl/amazonEC/client.rb",
    "sample/showcase/wsdl/eBaySvc/sampleclient.rb",
    "sample/showcase/wsdl/googleAdwords/CampaignService.wsdl",
    "sample/showcase/wsdl/googleAdwords/ca.pem",
    "sample/showcase/wsdl/googleAdwords/client.rb",
    "sample/showcase/wsdl/googleAdwords/soap/property",
    "sample/showcase/wsdl/googleSearch/GoogleSearch.rb",
    "sample/showcase/wsdl/googleSearch/GoogleSearchDriver.rb",
    "sample/showcase/wsdl/googleSearch/README",
    "sample/showcase/wsdl/googleSearch/httpd.rb",
    "sample/showcase/wsdl/googleSearch/sampleClient.rb",
    "sample/showcase/wsdl/googleSearch/samplehttpd.conf",
    "sample/showcase/wsdl/googleSearch/sjissearch.sh",
    "sample/showcase/wsdl/googleSearch/wsdlDriver.rb",
    "sample/showcase/wsdl/noaa/README.txt",
    "sample/showcase/wsdl/noaa/client.rb",
    "sample/showcase/wsdl/noaa/default.rb",
    "sample/showcase/wsdl/noaa/defaultDriver.rb",
    "sample/showcase/wsdl/noaa/defaultMappingRegistry.rb",
    "sample/showcase/wsdl/noaa/ndfdXMLClient.rb",
    "sample/showcase/wsdl/raa2.4/raa.rb",
    "sample/showcase/wsdl/raa2.4/raa.wsdl",
    "sample/showcase/wsdl/raa2.4/wsdlDriver.rb",
    "sample/showcase/wsdl/rnn/client.rb",
    "sample/showcase/wsdl/rnn/post.rb",
    "sample/showcase/wsdl/rnn/rnn-hash.wsdl",
    "sample/showcase/wsdl/rnn/rnn.wsdl",
    "sample/showcase/wsdl/rnn/submit.rb",
    "sample/showcase/wsdl/salesforce/SforceServiceClient.rb",
    "sample/showcase/wsdl/salesforce/ca.pem",
    "sample/showcase/wsdl/salesforce/client.rb",
    "sample/showcase/wsdl/salesforce/default.rb",
    "sample/showcase/wsdl/salesforce/defaultDriver.rb",
    "sample/showcase/wsdl/salesforce/soap/property",
    "sample/soapheader/authheader/authmgr.rb",
    "sample/soapheader/authheader/client.rb",
    "sample/soapheader/authheader/client2.rb",
    "sample/soapheader/authheader/server.rb",
    "sample/soapheader/authheader/server2.rb",
    "sample/soapheader/soapext_basicauth/client.rb",
    "sample/soapheader/soapext_basicauth/mms_MizGIS.rb",
    "sample/soapheader/soapext_basicauth/mms_MizGIS.wsdl",
    "sample/soapheader/soapext_basicauth/mms_MizGISClient.rb",
    "sample/soapheader/soapext_basicauth/mms_MizGISDriver.rb",
    "sample/soapheader/soapext_basicauth/mms_MizGISMappingRegistry.rb",
    "test/16runner.rb",
    "test/interopR2/README.txt",
    "test/interopR2/SOAPBuildersInterop_R2.wsdl",
    "test/interopR2/SOAPBuildersInterop_R2GrB.wsdl",
    "test/interopR2/base.rb",
    "test/interopR2/client.NetRemoting.rb",
    "test/interopR2/client.rb",
    "test/interopR2/client4S4C.rb",
    "test/interopR2/client4S4C2.rb",
    "test/interopR2/clientASP.NET.rb",
    "test/interopR2/clientApacheAxis.rb",
    "test/interopR2/clientApacheSOAP.rb",
    "test/interopR2/clientBEAWebLogic.rb",
    "test/interopR2/clientBase.rb",
    "test/interopR2/clientCapeConnect.rb",
    "test/interopR2/clientDelphi.rb",
    "test/interopR2/clientEasySoap.rb",
    "test/interopR2/clientFrontier.rb",
    "test/interopR2/clientGLUE.rb",
    "test/interopR2/clientHP.rb",
    "test/interopR2/clientJAX-RPC.rb",
    "test/interopR2/clientJSOAP.rb",
    "test/interopR2/clientKafkaXSLT.rb",
    "test/interopR2/clientMSSOAPToolkit2.0.rb",
    "test/interopR2/clientMSSOAPToolkit3.0.rb",
    "test/interopR2/clientNuSOAP.rb",
    "test/interopR2/clientNuWave.rb",
    "test/interopR2/clientOpenLink.rb",
    "test/interopR2/clientOracle.rb",
    "test/interopR2/clientPEAR.rb",
    "test/interopR2/clientPhalanx.rb",
    "test/interopR2/clientSIMACE.rb",
    "test/interopR2/clientSOAP4R.rb",
    "test/interopR2/clientSOAP__Lite.rb",
    "test/interopR2/clientSQLData.rb",
    "test/interopR2/clientSilverStream.rb",
    "test/interopR2/clientSpray2001.rb",
    "test/interopR2/clientSun.rb",
    "test/interopR2/clientVWOpentalkSoap.rb",
    "test/interopR2/clientWASP.rb",
    "test/interopR2/clientWASPC.rb",
    "test/interopR2/clientWebMethods.rb",
    "test/interopR2/clientWhiteMesa.rb",
    "test/interopR2/clientWingfoot.rb",
    "test/interopR2/clientXMLBus.rb",
    "test/interopR2/clientXMLRPC-EPI.rb",
    "test/interopR2/clientXSOAP.rb",
    "test/interopR2/clientZSI.rb",
    "test/interopR2/clienteSOAP.rb",
    "test/interopR2/clientgSOAP.rb",
    "test/interopR2/clientkSOAP.rb",
    "test/interopR2/iSimonReg.rb",
    "test/interopR2/interopResultBase.rb",
    "test/interopR2/interopService.rb",
    "test/interopR2/rwikiInteropService.rb",
    "test/interopR2/server.cgi",
    "test/interopR2/server.rb",
    "test/interopR2/simonReg.rb",
    "test/interopR2/test.sh",
    "test/interopR4/client.rb",
    "test/results",
    "test/runner.rb",
    "test/sm11/classDef.rb",
    "test/sm11/client.rb",
    "test/sm11/driver.rb",
    "test/sm11/servant.rb",
    "test/sm11/server.rb",
    "test/soap/asp.net/hello.wsdl",
    "test/soap/asp.net/test_aspdotnet.rb",
    "test/soap/auth/htdigest",
    "test/soap/auth/htpasswd",
    "test/soap/auth/test_basic.rb",
    "test/soap/auth/test_digest.rb",
    "test/soap/calc/calc.rb",
    "test/soap/calc/calc2.rb",
    "test/soap/calc/server.cgi",
    "test/soap/calc/server.rb",
    "test/soap/calc/server2.rb",
    "test/soap/calc/test_calc2.rb",
    "test/soap/case/test_mapping.rb",
    "test/soap/fault/test_customfault.rb",
    "test/soap/fault/test_fault.rb",
    "test/soap/fault/test_soaparray.rb",
    "test/soap/filter/test_filter.rb",
    "test/soap/header/server.cgi",
    "test/soap/header/session.pstoredb",
    "test/soap/header/test_authheader.rb",
    "test/soap/header/test_authheader_cgi.rb",
    "test/soap/header/test_simplehandler.rb",
    "test/soap/helloworld/hw_s.rb",
    "test/soap/helloworld/test_helloworld.rb",
    "test/soap/htpasswd",
    "test/soap/literalArrayMapping/amazonEc.rb",
    "test/soap/literalArrayMapping/amazonEcDriver.rb",
    "test/soap/literalArrayMapping/amazonresponse.xml",
    "test/soap/literalArrayMapping/test_definedarray.rb",
    "test/soap/marshal/marshaltestlib.rb",
    "test/soap/marshal/test_digraph.rb",
    "test/soap/marshal/test_marshal.rb",
    "test/soap/marshal/test_struct.rb",
    "test/soap/ssl/README",
    "test/soap/ssl/ca.cert",
    "test/soap/ssl/client.cert",
    "test/soap/ssl/client.key",
    "test/soap/ssl/server.cert",
    "test/soap/ssl/server.key",
    "test/soap/ssl/sslsvr.rb",
    "test/soap/ssl/subca.cert",
    "test/soap/ssl/test_ssl.rb",
    "test/soap/struct/test_struct.rb",
    "test/soap/styleuse/client.rb",
    "test/soap/styleuse/server.rb",
    "test/soap/swa/test_file.rb",
    "test/soap/test_basetype.rb",
    "test/soap/test_cookie.rb",
    "test/soap/test_custom_ns.rb",
    "test/soap/test_custommap.rb",
    "test/soap/test_empty.rb",
    "test/soap/test_envelopenamespace.rb",
    "test/soap/test_extraattr.rb",
    "test/soap/test_generator.rb",
    "test/soap/test_httpconfigloader.rb",
    "test/soap/test_mapping.rb",
    "test/soap/test_nestedexception.rb",
    "test/soap/test_nil.rb",
    "test/soap/test_no_indent.rb",
    "test/soap/test_property.rb",
    "test/soap/test_response_as_xml.rb",
    "test/soap/test_soapelement.rb",
    "test/soap/test_streamhandler.rb",
    "test/soap/test_styleuse.rb",
    "test/soap/wsdlDriver/README.txt",
    "test/soap/wsdlDriver/calc.wsdl",
    "test/soap/wsdlDriver/document.wsdl",
    "test/soap/wsdlDriver/echo_version.rb",
    "test/soap/wsdlDriver/simpletype.wsdl",
    "test/soap/wsdlDriver/test_calc.rb",
    "test/soap/wsdlDriver/test_document.rb",
    "test/soap/wsdlDriver/test_simpletype.rb",
    "test/test_helper.rb",
    "test/wsdl/abstract/abstract.rb",
    "test/wsdl/abstract/abstract.wsdl",
    "test/wsdl/abstract/abstractDriver.rb",
    "test/wsdl/abstract/abstractMappingRegistry.rb",
    "test/wsdl/abstract/test_abstract.rb",
    "test/wsdl/anonymous/expectedClassDef.rb",
    "test/wsdl/anonymous/expectedDriver.rb",
    "test/wsdl/anonymous/expectedMappingRegistry.rb",
    "test/wsdl/anonymous/lp.rb",
    "test/wsdl/anonymous/lp.wsdl",
    "test/wsdl/anonymous/lpDriver.rb",
    "test/wsdl/anonymous/lpMappingRegistry.rb",
    "test/wsdl/anonymous/test_anonymous.rb",
    "test/wsdl/any/any.wsdl",
    "test/wsdl/any/echo.rb",
    "test/wsdl/any/echoDriver.rb",
    "test/wsdl/any/echoMappingRegistry.rb",
    "test/wsdl/any/echoServant.rb",
    "test/wsdl/any/echo_service.rb",
    "test/wsdl/any/echo_serviceClient.rb",
    "test/wsdl/any/expectedDriver.rb",
    "test/wsdl/any/expectedEcho.rb",
    "test/wsdl/any/expectedMappingRegistry.rb",
    "test/wsdl/any/expectedService.rb",
    "test/wsdl/any/test_any.rb",
    "test/wsdl/axisArray/axisArray.wsdl",
    "test/wsdl/axisArray/itemList.rb",
    "test/wsdl/axisArray/itemListDriver.rb",
    "test/wsdl/axisArray/itemListMappingRegistry.rb",
    "test/wsdl/axisArray/test_axisarray.rb",
    "test/wsdl/choice/choice.rb",
    "test/wsdl/choice/choice.wsdl",
    "test/wsdl/choice/choiceDriver.rb",
    "test/wsdl/choice/choiceMappingRegistry.rb",
    "test/wsdl/choice/test_choice.rb",
    "test/wsdl/complexcontent/complexContent.rb",
    "test/wsdl/complexcontent/complexContent.wsdl",
    "test/wsdl/complexcontent/complexContentMappingRegistry.rb",
    "test/wsdl/complexcontent/test_echo.rb",
    "test/wsdl/datetime/DatetimeService.rb",
    "test/wsdl/datetime/datetime.rb",
    "test/wsdl/datetime/datetime.wsdl",
    "test/wsdl/datetime/datetimeServant.rb",
    "test/wsdl/datetime/test_datetime.rb",
    "test/wsdl/document/array/double.rb",
    "test/wsdl/document/array/double.wsdl",
    "test/wsdl/document/array/doubleDriver.rb",
    "test/wsdl/document/array/doubleMappingRegistry.rb",
    "test/wsdl/document/array/test_array.rb",
    "test/wsdl/document/document.wsdl",
    "test/wsdl/document/echo.rb",
    "test/wsdl/document/echoDriver.rb",
    "test/wsdl/document/echoMappingRegistry.rb",
    "test/wsdl/document/number.wsdl",
    "test/wsdl/document/ping_nosoapaction.wsdl",
    "test/wsdl/document/test_nosoapaction.rb",
    "test/wsdl/document/test_number.rb",
    "test/wsdl/document/test_rpc.rb",
    "test/wsdl/emptycomplextype.wsdl",
    "test/wsdl/fault/Add.rb",
    "test/wsdl/fault/AddMappingRegistry.rb",
    "test/wsdl/fault/AddServant.rb",
    "test/wsdl/fault/AddService.rb",
    "test/wsdl/fault/fault.wsdl",
    "test/wsdl/fault/multifault.wsdl",
    "test/wsdl/fault/test_fault.rb",
    "test/wsdl/fault/test_multifault.rb",
    "test/wsdl/group/echo.rb",
    "test/wsdl/group/echoDriver.rb",
    "test/wsdl/group/echoMappingRegistry.rb",
    "test/wsdl/group/expectedClassdef.rb",
    "test/wsdl/group/expectedDriver.rb",
    "test/wsdl/group/expectedMappingRegistry.rb",
    "test/wsdl/group/group.wsdl",
    "test/wsdl/group/test_rpc.rb",
    "test/wsdl/list/list.rb",
    "test/wsdl/list/list.wsdl",
    "test/wsdl/list/listDriver.rb",
    "test/wsdl/list/listMappingRegistry.rb",
    "test/wsdl/list/test_list.rb",
    "test/wsdl/map/map.wsdl",
    "test/wsdl/map/map.xml",
    "test/wsdl/map/test_map.rb",
    "test/wsdl/marshal/Person.rb",
    "test/wsdl/marshal/person.wsdl",
    "test/wsdl/marshal/person_org.rb",
    "test/wsdl/marshal/test_wsdlmarshal.rb",
    "test/wsdl/multiplefault.wsdl",
    "test/wsdl/oneway/oneway.rb",
    "test/wsdl/oneway/oneway.wsdl",
    "test/wsdl/oneway/onewayDriver.rb",
    "test/wsdl/oneway/onewayMappingRegistry.rb",
    "test/wsdl/oneway/test_oneway.rb",
    "test/wsdl/overload/OverloadServiceClient.rb",
    "test/wsdl/overload/default.rb",
    "test/wsdl/overload/defaultDriver.rb",
    "test/wsdl/overload/defaultMappingRegistry.rb",
    "test/wsdl/overload/defaultServant.rb",
    "test/wsdl/overload/expectedClient.rb",
    "test/wsdl/overload/expectedDriver.rb",
    "test/wsdl/overload/expectedServant.rb",
    "test/wsdl/overload/overload.wsdl",
    "test/wsdl/overload/test_overload.rb",
    "test/wsdl/qualified/default.rb",
    "test/wsdl/qualified/defaultDriver.rb",
    "test/wsdl/qualified/defaultMappingRegistry.rb",
    "test/wsdl/qualified/lp.rb",
    "test/wsdl/qualified/lp.wsdl",
    "test/wsdl/qualified/lp.xsd",
    "test/wsdl/qualified/lpDriver.rb",
    "test/wsdl/qualified/lpMappingRegistry.rb",
    "test/wsdl/qualified/np.wsdl",
    "test/wsdl/qualified/test_qualified.rb",
    "test/wsdl/qualified/test_unqualified.rb",
    "test/wsdl/raa/RAAService.rb",
    "test/wsdl/raa/README.txt",
    "test/wsdl/raa/expectedClassDef.rb",
    "test/wsdl/raa/expectedDriver.rb",
    "test/wsdl/raa/expectedMappingRegistry.rb",
    "test/wsdl/raa/raa.wsdl",
    "test/wsdl/raa/test_raa.rb",
    "test/wsdl/ref/expectedDriver.rb",
    "test/wsdl/ref/expectedProduct.rb",
    "test/wsdl/ref/product.rb",
    "test/wsdl/ref/product.wsdl",
    "test/wsdl/ref/productDriver.rb",
    "test/wsdl/ref/productMappingRegistry.rb",
    "test/wsdl/ref/test_ref.rb",
    "test/wsdl/rpc/RPC-Literal-TestDefinitions.rb",
    "test/wsdl/rpc/RPC-Literal-TestDefinitionsDriver.rb",
    "test/wsdl/rpc/RPC-Literal-TestDefinitionsMappingRegistry.rb",
    "test/wsdl/rpc/echo.rb",
    "test/wsdl/rpc/echoDriver.rb",
    "test/wsdl/rpc/echoMappingRegistry.rb",
    "test/wsdl/rpc/rpc.wsdl",
    "test/wsdl/rpc/test-rpc-lit.wsdl",
    "test/wsdl/rpc/test_rpc.rb",
    "test/wsdl/rpc/test_rpc_lit.rb",
    "test/wsdl/simplecontent/simpleContent.rb",
    "test/wsdl/simplecontent/simpleContentDriver.rb",
    "test/wsdl/simplecontent/simpleContentMappingRegistry.rb",
    "test/wsdl/simplecontent/simplecontent.wsdl",
    "test/wsdl/simplecontent/test_simplecontent.rb",
    "test/wsdl/simpletype/rpc/expectedClient.rb",
    "test/wsdl/simpletype/rpc/expectedDriver.rb",
    "test/wsdl/simpletype/rpc/expectedEchoVersion.rb",
    "test/wsdl/simpletype/rpc/expectedMappingRegistry.rb",
    "test/wsdl/simpletype/rpc/expectedServant.rb",
    "test/wsdl/simpletype/rpc/expectedService.rb",
    "test/wsdl/simpletype/rpc/rpc.wsdl",
    "test/wsdl/simpletype/rpc/test_rpc.rb",
    "test/wsdl/simpletype/simpletype.wsdl",
    "test/wsdl/simpletype/test_simpletype.rb",
    "test/wsdl/soap/soapbodyparts.wsdl",
    "test/wsdl/soap/test_soapbodyparts.rb",
    "test/wsdl/soap/wsdl2ruby/expectedClassdef.rb",
    "test/wsdl/soap/wsdl2ruby/expectedClient.rb",
    "test/wsdl/soap/wsdl2ruby/expectedDriver.rb",
    "test/wsdl/soap/wsdl2ruby/expectedMappingRegistry.rb",
    "test/wsdl/soap/wsdl2ruby/expectedServant.rb",
    "test/wsdl/soap/wsdl2ruby/expectedService.cgi",
    "test/wsdl/soap/wsdl2ruby/expectedService.rb",
    "test/wsdl/soap/wsdl2ruby/rpc.wsdl",
    "test/wsdl/soap/wsdl2ruby/section/expectedClassdef.rb",
    "test/wsdl/soap/wsdl2ruby/section/mysample.rb",
    "test/wsdl/soap/wsdl2ruby/section/section.xsd",
    "test/wsdl/soap/wsdl2ruby/section/test_section.rb",
    "test/wsdl/soap/wsdl2ruby/soapenc/echo.rb",
    "test/wsdl/soap/wsdl2ruby/soapenc/soapenc.wsdl",
    "test/wsdl/soap/wsdl2ruby/soapenc/test_soapenc.rb",
    "test/wsdl/soap/wsdl2ruby/test_wsdl2ruby.rb",
    "test/wsdl/soaptype/echo.rb",
    "test/wsdl/soaptype/echoDriver.rb",
    "test/wsdl/soaptype/echoMappingRegistry.rb",
    "test/wsdl/soaptype/soaptype.wsdl",
    "test/wsdl/soaptype/test_soaptype.rb",
    "test/wsdl/test_emptycomplextype.rb",
    "test/wsdl/test_fault.rb",
    "test/wsdl/test_multiplefault.rb",
    "test/xsd/codegen/test_classdef.rb",
    "test/xsd/noencoding.xml",
    "test/xsd/test_iconvcharset.rb",
    "test/xsd/test_noencoding.rb",
    "test/xsd/test_ns.rb",
    "test/xsd/test_xmlschemaparser.rb",
    "test/xsd/test_xsd.rb",
    "test/xsd/xmllang.xml",
    "test/xsd/xmlschema.xml",
    "test/xsd/xsd2ruby/expected_mysample.rb",
    "test/xsd/xsd2ruby/expected_mysample_mapper.rb",
    "test/xsd/xsd2ruby/expected_mysample_mapping_registry.rb",
    "test/xsd/xsd2ruby/mysample.rb",
    "test/xsd/xsd2ruby/mysample_mapper.rb",
    "test/xsd/xsd2ruby/mysample_mapping_registry.rb",
    "test/xsd/xsd2ruby/section.xsd",
    "test/xsd/xsd2ruby/test_xsd2ruby.rb"
  ]
  s.homepage = "https://github.com/rtiss/rtiss_soap4r".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.6.7".freeze
  s.summary = "Ruby 3.2 compatible soap4r library".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<rake>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<ox>.freeze, ["~> 2.14".freeze, ">= 2.14.22".freeze])
  s.add_runtime_dependency(%q<nokogiri>.freeze, ["~> 1.16".freeze, ">= 1.16.2".freeze])
  s.add_runtime_dependency(%q<httpclient>.freeze, ["~> 2.9".freeze])
  s.add_runtime_dependency(%q<oga>.freeze, ["~> 3.4".freeze])
  s.add_runtime_dependency(%q<logger-application>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<savon>.freeze, ["~> 2.14".freeze])
  s.add_runtime_dependency(%q<cookiejar>.freeze, ["~> 0.3.4".freeze])
  s.add_runtime_dependency(%q<libxml-ruby>.freeze, ["~> 5.0".freeze, ">= 5.0.3".freeze])
  s.add_runtime_dependency(%q<webrick>.freeze, ["~> 1.9".freeze, ">= 1.9.1".freeze])
  s.add_runtime_dependency(%q<addressable>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<shoulda>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<pry>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<jeweler>.freeze, ["~> 2.3".freeze, ">= 2.3.9".freeze])
end

