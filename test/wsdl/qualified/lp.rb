require 'xsd/qname'

module WSDL


# {urn:lp}login
#   username - SOAP::SOAPString
#   password - SOAP::SOAPString
#   timezone - SOAP::SOAPString
class Login
  attr_accessor :username
  attr_accessor :password
  attr_accessor :timezone

  def initialize(username = nil, password = nil, timezone = nil)
    @username = username
    @password = password
    @timezone = timezone
  end
end

# {urn:lp}loginResponse
#   loginResult - WSDL::LoginResponse::LoginResult
class LoginResponse

  # inner class for member: loginResult
  # {}loginResult
  #   sessionID - SOAP::SOAPString
  class LoginResult
    attr_accessor :sessionID

    def initialize(sessionID = nil)
      @sessionID = sessionID
    end
  end

  attr_accessor :loginResult

  def initialize(loginResult = nil)
    @loginResult = loginResult
  end
end


end
