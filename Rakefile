require 'rake/testtask'
require File.join(File.dirname(__FILE__), 'lib', 'soap', 'version')

task :default => 'test:deep'


## ---------------------------------------------------------------------------------------------------- ##
## Unit Testing
## run against the soap4r library for the given Comma-Separated List of Test Scopes. 
##   rake test:deep [SCOPE=soap,wsdl,...]
## Also accepts WARNINGS and VERBOSE as environment variables to control the level of debugging output.
## ---------------------------------------------------------------------------------------------------- ##
namespace :test do
  desc 'Run the complete set of tests' #  
  Rake::TestTask.new(:deep) do |t|

    test_scope = ENV['SCOPE'] || '*'
    t.test_files = FileList[ test_scope.split(',').collect{|scope| "test/#{scope}/**/test_*.rb"} ]

    t.warning = !!ENV['WARNINGS']
    t.verbose = !!ENV['VERBOSE']
    t.libs << 'test'
  end

  desc 'Run the minimum set of tests'
  Rake::TestTask.new(:surface) do |t|

    test_scope = ENV['SCOPE'] || '*'
    t.test_files = FileList[ test_scope.split(',').collect{|scope| "test/#{scope}/test_*.rb"} ]

    t.warning = !!ENV['WARNINGS']
    t.verbose = !!ENV['VERBOSE']
    t.libs << 'test'
  end
end


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