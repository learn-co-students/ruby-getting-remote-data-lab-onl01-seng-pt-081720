require 'pry'

require 'open-uri'
require 'json'
require 'net/http'

class GetRequester
    attr_accessor :url
    
    def initialize(url)
        @url = url
    end

    #sends a GET request to the URL passed in on initialization
    #should return the body of the response
    def get_response_body 
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    #should use get_response_body to send a request
    #should return a Ruby Array or Hash made up of data converted from the response of that request
    def parse_json
        JSON.parse(self.get_response_body)
    end
end