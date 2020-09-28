require 'json'
require 'open-uri'
require 'net/http'
require 'pry'

class GetRequester

  URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

  def initialize(url)
    @url = url
  end

  def get_response_body # sends GET request to URL & returns body of response
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json # use get_response_body to send request & return array/hash w/data from request
    results = JSON.parse(self.get_response_body)
    results.collect do |result|
      result
    end
  end
end