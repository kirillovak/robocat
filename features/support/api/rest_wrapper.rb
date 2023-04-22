require 'rest-client'
require 'json'
require 'ostruct'
require 'logger'

module Api
  class RestWrapper

    attr_accessor :base_url, :logger
    def initialize()
      @base_url = ENV['BASE_URL']
      @logger = Logger.new($stoud)
    end

    def get(endpoint)
      response = RestClient.get("#{@base_url}#{endpoint}")
      verify_response(response)
      parse_response(response)
    end

    def post(endpoint, payload)
      response = RestClient.post("#{@base_url}#{endpoint}", payload.to_json, {content_type: :json, accept: :json})
      verify_response(response)
      parse_response(response)
    end

    def patch(endpoint, payload)
      response = RestClient.patch("#{@base_url}#{endpoint}", payload.to_json, {content_type: :json, accept: :json})
      verify_response(response)
      parse_response(response)
    end

    def put(endpoint, payload)
      response = RestClient.put("#{@base_url}#{endpoint}", payload.to_json, {content_type: :json, accept: :json})
      verify_response(response)
      parse_response(response)
    end

    private

    def parse_response(response)
      JSON.parse(response.body, object_class: OpenStruct)
    end

    def verify_response(response)
      unless [200, 201].include?(response.code)
        raise "Request failed with status code #{response.code}"
      end
      @logger.info "Verified response as ok!"
    end
  end
end