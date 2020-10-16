require 'cucumber'
require 'httparty'

class ProjectsPage
  include HTTParty

  def getResponse

    res = self.class.get('https://skinblend-dev-fa.azurewebsites.net/api/authenticate',
                         :query => { :code => "6wdZpjP7OM4VUF57FaydkekeW5KwoCbwQ5ta7kaXAp/g8KHokK3XCg=="})
    res.body
  end

  def getCode

    res = self.class.get('https://skinblend-dev-fa.azurewebsites.net/api/authenticate',
                         :query => { :code => "6wdZpjP7OM4VUF57FaydkekeW5KwoCbwQ5ta7kaXAp/g8KHokK3XCg=="})
    res.code
  end

  def getMessage
    res = self.class.get('https://skinblend-dev-fa.azurewebsites.net/api/authenticate',
                         :query => { :code => "6wdZpjP7OM4VUF57FaydkekeW5KwoCbwQ5ta7kaXAp/g8KHokK3XCg=="})
    res.message


  end

  def getNewResponse
    res = self.class.get('https://skinblend-dev-fa.azurewebsites.net/api/authenticate',
                         :query => { :code => "6wdZpjP7OM4VUF57FaydkekeW5KwoCbwQ5ta7kaXAp/g8KHokK3XCg=="},
                         :headers => {
                             "X-app-code" => "skinblend",
                             "X-app-vers" => "1.0",
                             "X-dev-code" => "unknown"
                         })

    res.body
  end

  def getNewCode
    res = self.class.get('https://skinblend-dev-fa.azurewebsites.net/api/authenticate',
                         :query => { :code => "6wdZpjP7OM4VUF57FaydkekeW5KwoCbwQ5ta7kaXAp/g8KHokK3XCg=="},
                         :headers => {
                             "X-app-code" => "skinblend",
                             "X-app-vers" => "1.0",
                             "X-dev-code" => "unknown"
                         })
    res.code
  end

  def getNewMessage
    res = self.class.get('https://skinblend-dev-fa.azurewebsites.net/api/authenticate',
                         :query => { :code => "6wdZpjP7OM4VUF57FaydkekeW5KwoCbwQ5ta7kaXAp/g8KHokK3XCg=="},
                         :headers => {
                             "X-app-code" => "skinblend",
                             "X-app-vers" => "1.0",
                             "X-dev-code" => "unknown"
                         })

    res.message
  end

end


