require 'test/unit'
require 'wsdl/xmlSchema/parser'


module XSD


class TestEmptyCharset < Test::Unit::TestCase
  def setup
    @file = File.join(File.dirname(File.expand_path(__FILE__)), 'noencoding.xml')
  end

  def test_wsdl
    begin
      content = File.read(@file, encoding: 'UTF-8').scrub
      xml = WSDL::XMLSchema::Parser.new.parse(content)
    rescue RuntimeError
      if XSD::XMLParser.const_defined?("REXMLParser")
	STDERR.puts("rexml cannot handle euc-jp without iconv/uconv.")
	return
      end
      raise
    rescue Errno::EINVAL
      # unsupported encoding
      return
    end
    assert_equal(WSDL::XMLSchema::Schema, xml.class)
    assert_equal(0, xml.collect_elements.size)
  end
end


end
