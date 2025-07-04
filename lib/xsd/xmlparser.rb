# XSD4R - XML Instance parser library.
# Copyright (C) 2000-2007  NAKAMURA, Hiroshi <nahi@ruby-lang.org>.

# This program is copyrighted free software by NAKAMURA, Hiroshi.  You can
# redistribute it and/or modify it under the same terms of Ruby's license;
# either the dual license version in 2003, or any later version.


require 'xsd/xmlparser/parser'
require 'soap/property'


module XSD

  module XMLParser
    def create_parser(host, opt = {})
      XSD::XMLParser::Parser.create_parser(host, opt)
    end
    module_function :create_parser

    # $1 is necessary.
    NSParseRegexp = Regexp.new("^xmlns:?(.*)$")

    def filter_ns(ns, attrs)
      ns_updated = false
      if attrs.nil? or attrs.empty?
        return [ns, attrs]
      end
      newattrs = {}
      attrs.each do |key, value|
        if NSParseRegexp =~ key
          unless ns_updated
            ns = ns.clone_ns
            ns_updated = true
          end
          # tag == '' means 'default namespace'
          # value == '' means 'no default namespace'
          tag = $1 || ''
          ns.assign(value, tag)
        else
          newattrs[key] = value
        end
      end
      [ns, newattrs]
    end
    module_function :filter_ns
  end


end


PARSER_LIBS = %w[xmlparser xmlscanner rexmlparser]
# Get library prefs
opt = ::SOAP::Property.loadproperty('soap/property')
use_libxml = (opt and opt['parser'] and opt['parser']['use_libxml'] and opt['parser']['use_libxml'] == 'false') ? false : true
# Try to load XML processor.
loaded = false
PARSER_LIBS.each do |name|
  begin
    lib = "xsd/xmlparser/#{name}"
    require lib unless !use_libxml && name == 'libxmlparser'
    # XXX: for a workaround of rubygems' require inconsistency
    # XXX: MUST BE REMOVED IN THE FUTURE
    raise LoadError unless XSD::XMLParser.constants.find { |c|
      c.to_s.downcase == name.downcase
    }
    loaded = true
    break
  rescue LoadError
  end
end
unless loaded
  raise RuntimeError.new("XML processor module not found.")
end

