require 'httparty'
require 'json'

# A Connection adapter using HTTParty as the network transport
module DoubleMap
  module Connection
    class HTTPartyAdapter
      include HTTParty

      def initialize config
        self.class.base_uri config.base_uri
        # Write debug information to the configured output stream
        self.class.debug_output config.debug_output
      end

      def get endpoint, opts={}, &block
        self.class.get(endpoint, opts, &block).parsed_response
      end

      def post endpoint, opts={}, &block
        self.class.post(endpoint, opts, &block).parsed_response
      end
    end

    register_adapter :httparty, HTTPartyAdapter
  end
end
