module DoubleMap
  class Client::Routes < API
    extend Memoist

    # Return a list of all routes on the system.
    def list
      get_request('/map/v2/routes').map{ |route| Route.new(route) }.map(&route_map)
    end
    memoize :list
    alias_method :all, :list

    # Return the route whose id matches the given id
    def get id
      list.find{ |route| route.id == id }
    end
    memoize :get
    alias_method :find, :get

    private

    def route_map
      DoubleMap.configuration.route_map
    end
  end
end
