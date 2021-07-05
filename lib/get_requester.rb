require 'net/http'
require 'open-uri'
require 'json'
require 'pry'


class GetRequester
  attr_accessor :URL


  URL = []

  def initialize(url)
    @URL = url
  end


  def get_response_body
    uri = URI.parse(@URL)
   response = Net::HTTP.get_response(uri)

   response.body


  end

  def parse_json
    JSON.parse(self.get_response_body)


  end



end
