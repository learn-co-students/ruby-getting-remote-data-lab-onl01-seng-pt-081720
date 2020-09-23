# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  
  attr_accessor :url
  
 
  def initialize(url)
    @url = url
    
  end
  
  # sends a GET request to the URL passed in on initialization
  # return the body of the response
  def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  def parse_json
    requests = JSON.parse(self.get_response_body)
  end
end
