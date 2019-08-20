require 'nokogiri'
module SOAP
  class HttpLogger
    def log(driver_class, method_name, endpoint_url, request_string, response_string, response_time)
      raise NotImplementedError
    end
  end

  class SimpleHttpLogger < HttpLogger
    def log(driver_class, method_name, endpoint_url, request_string, response_string, response_time)
      puts "SOAP Request to URL: #{endpoint_url}"
      puts "Driver class: #{driver_class}"
      puts "Method: #{method_name}"
      puts "Request:"
      begin
        puts Nokogiri::XML(request_string).root.to_xml
      rescue => e
        puts "NO VALID XML REQUEST:\n---------------------"
        puts request_string
        puts "---------------------"
        puts e.backtrace
      end
      puts "================================================================================================\nResponse:"
      begin
        puts Nokogiri::XML(response_string).root.to_xml
      rescue => e
        puts "NO VALID XML RESPONSE:\n---------------------"
        puts response_string
        puts "---------------------"
        puts e.backtrace
      end
      puts "Response time: #{response_time}"
    end
  end
end