require_relative 'doublemap_api/core_ext/string'

require_relative 'doublemap_api/version'
require_relative 'doublemap_api/configuration'
require_relative 'doublemap_api/connection'
require_relative 'doublemap_api/models'
require_relative 'doublemap_api/api'
require_relative 'doublemap_api/client'

module DoubleMap
  class << self
    # Alias for `DoubleMap::Client.new`
    def new
      Client.new
    end

    # The current client configuration
    def configuration
      @configuration ||= Configuration.new
    end

    # Allow users to set configuration options via a block. By default, the
    # configuration will be validated after the block returns. This will raise
    # an exception if any required configurations are not provided. This
    # behavior can be skipped by passing `validate: false` as a parameter.
    def configure validate: true
      yield configuration
      configuration.validate! if validate
      configuration
    end
  end
end
