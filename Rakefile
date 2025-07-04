require 'rubygems'
require 'bundler'
require File.join(File.dirname(__FILE__), 'lib', 'soap', 'version')
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "rtiss_soap4r"
  gem.version = SOAP::VERSION::STRING
  gem.homepage = "https://github.com/rtiss/rtiss_soap4r"
  gem.license = "MIT"
  gem.summary = %Q{Ruby 3.2 compatible soap4r library}
  gem.description = %Q{Ruby 3.2 compatible soap4r library}
  gem.authors = ["Laurence A. Lee", "Hiroshi NAKAMURA", "Igor Jancev", "Lara Hofer"]
  # Include your dependencies below. Runtime dependencies are required when using your gem,
  # and development dependencies are only needed for development (ie running rake tasks, tests, etc)
  #  gem.add_runtime_dependency 'jabber4r', '> 0.1'
  #  gem.add_development_dependency 'rspec', '> 1.2.3'
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

# require 'rcov/rcovtask'
# Rcov::RcovTask.new do |test|
#   test.libs << 'test'
#   test.pattern = 'test/**/test_*.rb'
#   test.verbose = true
# end
#
# task :default => :test
#
# require 'rake/rdoctask'
# Rake::RDocTask.new do |rdoc|
#   version = File.exist?('VERSION') ? File.read('VERSION') : ""
#
#   rdoc.rdoc_dir = 'rdoc'
#   rdoc.title = "soap4r-ruby1.9 #{version}"
#   rdoc.rdoc_files.include('README*')
#   rdoc.rdoc_files.include('lib/**/*.rb')
# end


## ---------------------------------------------------------------------------------------------------- ##
#
# Packaging tasks
#
## ---------------------------------------------------------------------------------------------------- ##


def name
  'rtiss_soap4r'
end

def version
  SOAP::VERSION::STRING
end

task :release => :build do
  unless `git branch` =~ /^\* master$/
    puts "You must be on the master branch to release!"
    exit!
  end
  sh "git commit --allow-empty -a -m 'Release #{version}'"
  sh "git tag #{version}"
  sh "git push origin master --tags"
  sh "gem push pkg/#{name}-#{version}.gem"
end


task :build do
  sh "mkdir -p pkg"
  sh "gem build #{name}.gemspec"
  sh "mv #{name}-#{version}.gem pkg"
end