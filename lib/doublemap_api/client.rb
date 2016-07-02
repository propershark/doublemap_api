require 'memoist'

module DoubleMap
  class Client < API
    extend Memoist

    require_all 'client',
      'routes',
      'stops',
      'vehicles'

    include_api :routes
    include_api :stops
    include_api :vehicles
  end
end

