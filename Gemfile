source 'http://rubygems.org'

gem 'rake'

#gem 'htmlentities', '~> 4.3.3'    # Require this if OxParser's built-in "Special Character" conversion isn't sufficient for your needs.
gem 'ox', '~> 2.14', '>= 2.14.22'                         # oxparser       ; Uses its own custom C-library
gem 'nokogiri', '~> 1.16', '>= 1.16.2'
gem 'httpclient', '~> 2.9'
gem 'oga', '~> 3.4'                  # ogaparser      ; Pure-Ruby Alternative ; Ruby 1.9 and above only.
gem 'logger-application', :require=>'logger-application'
#gem 'xmlparser', '~> 0.7.2.1'
gem 'savon', '~> 2.14'
gem 'cookiejar', '~> 0.3.4'
gem 'libxml-ruby', '~> 5.0', '>= 5.0.3'                # libxmlparser   ; Uses libxml2
gem 'webrick', '~> 1.9', '>= 1.9.1'
gem 'addressable'
group :development do
  gem "shoulda", ">= 0"
  gem "pry"
  gem 'jeweler', '~> 2.3', '>= 2.3.9'
end

# group :development do
#   gem "shoulda", ">= 0"
#   gem "pry"
#   gem 'jeweler', '~> 2.3', '>= 2.3.9'
#   gem 'stringio', '~> 3.1', '>= 3.1.6'
#   gem 'test-unit', '~> 3.6', '>= 3.6.8'
#   gem 'webrick', '~> 1.9', '>= 1.9.1'
#   #gem "rcov", ">= 0"
# end


## # Testing Support ###
group :test do
  # gem "codeclimate-test-reporter", :require=>nil if RUBY_VERSION.to_f >= 1.9
  # gem 'byebug'
  gem 'test-unit'
  gem 'minitest', '5.25.4'
  #gem 'rexml', '~> 3.4', '>= 3.4.1'
  #gem 'rubyjedi-testunitxml', :git=>'https://github.com/rubyjedi/testunitxml.git', :branch=>'master'
  gem "codeclimate-test-reporter", :require=>nil if RUBY_VERSION.to_f >= 1.9
  
  ### Misc Debugging Aids ###
  gem "awesome_print", :require => 'ap'
  # gem 'rcov'                       # Coverage Test scoring, for more confidence. Do a 'rake rcov:rcov' to yield coverage results.
  # gem 'pry'                        ## see also: pry-debugger for Ruby 1.9 and lower; and pry-byebug for 2.0 and higher (requires byebug gem also)
  # gem 'ruby-termios'               # Unroller requires this . . .
  # gem 'unroller', :git=>'https://github.com/jayjlawrence/unroller.git', :branch=>'master'

  gem 'byebug' if RUBY_VERSION.to_f >= 2.0
  gem 'rtiss_soap4r', :path=>'.'  # Make our development copy (this directory) available as a Gem via Bundler. Useful for running tests.
end
