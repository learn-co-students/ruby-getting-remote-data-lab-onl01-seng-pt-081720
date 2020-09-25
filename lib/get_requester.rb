# Write your code here
class GetRequester
  require 'net/http'
  require 'open-uri'
  require 'json'
  require 'pry'

  URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
  
 def initialize(url)
    url
  end
  
  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  def parse_json
    structure = JSON.parse(self.get_response_body)
    structure.each do |x|
      x
    end
  end
  
end