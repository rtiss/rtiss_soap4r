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
      puts request_string
      puts "Response:"
      puts response_string
      puts "Response time: #{response_time}"
    end
  end
end