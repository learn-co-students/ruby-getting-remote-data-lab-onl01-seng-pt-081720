require 'open-uri'
require 'net/http'
require 'json'


class GetRequester
  def initialize(url)
    @url = url
  end

  def get_response_body
    uri = URI.parse(@url)
    @response = Net::HTTP.get_response(uri)
    @response.body
  end

  def parse_json
    parsed = JSON.parse(self.get_response_body)
    parsed
  end

end
#All work should be completed in lib/get_requester.rb. Use the previous code-along on getting data from APIs as a reference when building out your class.

#Start by creating a GetRequester class. This class should be able to initialize with a string URL.

#The GetRequester class should have a get_response_body method that sends a GET request to the URL passed in on initialization. This method should return the body of the response.

#The GetRequester class should have a parse_json method should use get_response_body to send a request, then return a Ruby Array or Hash made up of data converted from the response of that request.

#The tests in this lab will use your code to send a request for some JSON data, located at https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json.
#Read the test error messages for additional as you work for additional information. Don't forget to require the necessary Ruby modules and classes!
