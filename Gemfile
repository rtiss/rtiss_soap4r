source 'http://rubygems.org'
gem 'rake'

gem 'httpclient'   # 2.1.5.2

if RUBY_VERSION.to_f <= 1.8
  gem 'htmlentities', '4.3.1'       # Require this if OxParser's built-in "Special Character" conversion isn't sufficient for your needs.
  gem 'nokogiri', '~> 1.5.11'       # nokogiriparser ; Uses libxml2, libxslt, and zlib
else
  gem 'htmlentities', '~> 4.3.3'    # Require this if OxParser's built-in "Special Character" conversion isn't sufficient for your needs.
  gem 'nokogiri',     '~> 1.6.6'    # nokogiriparser ; Uses libxml2, libxslt, and zlib
  gem 'oga'                         # ogaparser      ; Pure-Ruby Alternative ; Ruby 1.9 and above only.
  gem 'logger-application', :require=>'logger-application'
end

if RUBY_PLATFORM =~ /java/
  gem 'libxml-jruby'                 # libxmlparser (Java Equivalent)
else
  gem 'libxml-ruby'                 # libxmlparser   ; Uses libxml2
  gem 'ox'                            # oxparser       ; Uses its own custom C-library

  gem 'curb'
end

## # Testing Support ###
group :test do
  if RUBY_VERSION.to_f <= 1.8
    gem 'test-unit', '~> 1.2.3'
  else
    gem 'test-unit'
  end

  gem 'rubyjedi-testunitxml', :git=>'https://github.com/rubyjedi/testunitxml.git', :branch=>'master'
  gem "codeclimate-test-reporter", :require=>nil if RUBY_VERSION.to_f >= 1.9
  
  ### Misc Debugging Aids ###
  # gem 'awesome_print'
  # gem 'rcov'                       # Coverage Test scoring, for more confidence. Do a 'rake rcov:rcov' to yield coverage results.
  # gem 'pry'                        ## see also: pry-debugger for Ruby 1.9 and lower; and pry-byebug for 2.0 and higher (requires byebug gem also)
  # gem 'ruby-termios'               # Unroller requires this . . .
  # gem 'unroller', :git=>'https://github.com/jayjlawrence/unroller.git', :branch=>'master'

  gem 'byebug' if RUBY_VERSION.to_f >= 2.0
  gem 'rtiss_soap4r', :path=>'.'  # Make our development copy (this directory) available as a Gem via Bundler. Useful for running tests.
end
