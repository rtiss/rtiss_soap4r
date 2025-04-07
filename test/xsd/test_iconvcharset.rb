# encoding: UTF-8

require 'test/unit'
require 'xsd/iconvcharset'

class TestIconvCharset < Test::Unit::TestCase

  def test_iso88591_utf8
    assert_equal "á", XSD::IconvCharset.safe_iconv("utf-8", "iso-8859-1", "\xE1")
  end

  def test_utf8_iso88591
    assert_equal "\xE1".force_encoding('iso-8859-1'), XSD::IconvCharset.safe_iconv("iso-8859-1", "utf-8", "á")
  end

  def test_invalid_encoding
    assert_equal "á?á".encode('iso-8859-1'), XSD::IconvCharset.safe_iconv("iso-8859-1", "utf-8", "á\x8Dá".force_encoding('ascii-8bit'))
  end

end if RUBY_VERSION > '1.9'
