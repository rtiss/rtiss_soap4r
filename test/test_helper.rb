# encoding: UTF-8
require 'test/unit'
#require 'test/unit/xml' ## RubyJedi

# Load Path Konfiguration - fügt das lib-Verzeichnis zum Load Path hinzu
$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)

# require "codeclimate-test-reporter"
# CodeClimate::TestReporter.start

ENV['DEBUG_SOAP4R'] = 'true' ## Needed to force wsdl2ruby.rb and xsd2ruby.rb to use DEVELOPMENT soap4r libs instead of installed soap4r libs
$DEBUG = true #!!ENV['WIREDUMPS']

module TestUtil
  # MT-unsafe
  #$LOAD_PATH.unshift File.expand_path('../lib', __dir__)
  def self.get_free_port
    server = TCPServer.new('0.0.0.0', 0)
    port = server.local_address.ip_port
    server.close
    port
  end


  def self.port_in_use?(port, host = 'localhost')
    Socket.tcp(host, port, connect_timeout: 1) { true } rescue false
  end

  def self.require(dir, *features)
    $LOAD_PATH.unshift(dir)

    begin
      # avoid 'already initialized constant FizzBuzz' warning
      silent do
        Dir.chdir(dir) do
          features.each do |feature|
            Kernel.require feature
          end
        end
      end
    ensure
      features.each do |feature|
        $".delete(feature)
      end
    end
  end

  # MT-unsafe
  def self.silent
    if $DEBUG
      yield
    else
      back = $VERBOSE
      $VERBOSE = nil
      begin
        yield
      ensure
        $VERBOSE = back
      end
    end
  end

  def self.filecompare(expectedfile, actualfile)
    expected = loadfile(expectedfile)
    actual = loadfile(actualfile)
    if expected != actual
      raise "#{File.basename(actualfile)} is different from #{File.basename(expectedfile)}"
    end
  end

  def self.loadfile(file)
    File.open(file) { |f| f.read }
  end

  def self.start_server_thread(server)
    t = Thread.new {
      Thread.current.abort_on_exception = true
      server.start
    }
    t
  end
end