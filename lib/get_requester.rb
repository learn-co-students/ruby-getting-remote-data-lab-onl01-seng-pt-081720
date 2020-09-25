require 'net/http'
require 'open-uri'
require 'json'
 
class GetRequester
  
  attr_accessor :url 
  
  @@all = []
  
  def initialize (url)
    @url = url 
    @@all << self 
  end 
 
  URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
 
  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end
 
 def parse_json
  info = JSON.parse(self.get_response_body)
  info.collect do |info|
    info 
  end
end
 
end

