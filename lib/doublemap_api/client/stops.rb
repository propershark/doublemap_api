module DoubleMap
  class Client::Stops < API
    extend Memoist

    # Return a list of all stops on the system.
    def list
      get_request('/map/v2/stops').map{ |stop| Stop.new(stop) }.each(&on_stop)
    end
    memoize :list
    alias_method :all, :list

    # Return the route whose id matches the given id
    def get id
      list.find{ |stop| stop.id == id }
    end
    memoize :get
    alias_method :find, :get

    private

    def on_stop
      DoubleMap.configuration.on_stop
    end
  end
end
