module DoubleMap
  class Client::Routes < API
    extend Memoist

    # Return a list of all routes on the system.
    def list
      get_request('/map/v2/routes').map{ |route| Route.new(route) }.each(&on_route)
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

    def on_route
      DoubleMap.configuration.on_route
    end
  end
end
