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
      puts Nokogiri::XML(request_string).root.to_xml
      puts "================================================================================================\nResponse:"
      puts Nokogiri::XML(response_string).root.to_xml
      puts "Response time: #{response_time}"
    end
  end
end