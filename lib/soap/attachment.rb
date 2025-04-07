# soap/attachment.rb: SOAP4R - SwA implementation.
# Copyright (C) 2000-2007  NAKAMURA, Hiroshi <nahi@ruby-lang.org>.

# This program is copyrighted free software by NAKAMURA, Hiroshi.  You can
# redistribute it and/or modify it under the same terms of Ruby's license;
# either the dual license version in 2003, or any later version.


require 'soap/baseData'
require 'soap/mapping'


module SOAP


class SOAPAttachment < SOAPExternalReference
  attr_reader :data

  def initialize(value)
    super()
    @data = value
  end

private

  def external_contentid
    @data.contentid
  end
end


class Attachment
  attr_reader :io
  attr_accessor :contenttype

  def initialize(value = nil)
    @contentid = nil
    @content = nil
    @contenttype = "application/octet-stream"

    case value
    when File
      @content = value.read
      value.close
    when String
      @content = value
    when IO, StringIO
      @content = value.read
    when nil
      # Nichts zu tun
    else
      @content = value.to_s
    end
  end

  def contentid
    @contentid ||= Attachment.contentid(self)
  end

  def contentid=(contentid)
    @contentid = contentid
  end

  def mime_contentid
    '<' + contentid + '>'
  end

  def content
    @content
  end

  def to_s
    content.to_s
  end

  def write(out)
    out.write(content)
  end

  def save(filename)
    File.open(filename, "wb") do |f|
      write(f)
    end
  end

  def headers
    {
      'Content-Id' => mime_contentid,
      'Content-Type' => contenttype,
      'Content-Transfer-Encoding' => 'binary'
    }
  end

  def self.contentid(obj)
    # Verbesserte Version, die einen eindeutigeren ID generiert
    [Time.now.to_f.to_s.gsub('.', ''), Process.pid.to_s, obj.__id__.to_s].join('.')
  end

  def self.mime_contentid(obj)
    '<' + contentid(obj) + '>'
  end
end


module Mapping
  class AttachmentFactory < SOAP::Mapping::Factory
    def obj2soap(soap_class, obj, info, map)
      soap_obj = soap_class.new(obj)
      mark_marshalled_obj(obj, soap_obj)
      soap_obj
    end

    def soap2obj(obj_class, node, info, map)
      obj = node.data
      mark_unmarshalled_obj(node, obj)
      return true, obj
    end
  end

  DefaultRegistry.add(::SOAP::Attachment, ::SOAP::SOAPAttachment,
    AttachmentFactory.new, nil)
end


end
