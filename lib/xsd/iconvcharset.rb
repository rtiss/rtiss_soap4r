# XSD4R - Charset handling with iconv.
# Copyright (C) 2000-2007  NAKAMURA, Hiroshi <nahi@ruby-lang.org>.

# This program is copyrighted free software by NAKAMURA, Hiroshi.  You can
# redistribute it and/or modify it under the same terms of Ruby's license;
# either the dual license version in 2003, or any later version.

module XSD

class IconvCharset
  def self.safe_iconv(to, from, str)
    str.force_encoding(from).chars.map { |c| c.valid_encoding? && c || '?' }.join.encode(to)
  end
end if RUBY_VERSION > '1.9'

end
