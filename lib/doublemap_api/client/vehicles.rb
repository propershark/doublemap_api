module DoubleMap
  class Client::Vehicles < API
    extend Memoist

    # Return a list of all vehicles currently traveling on routes.
    def list
      get_request('/map/v2/buses').map{ |vehicle| Vehicle.new(vehicle) }.each(&on_vehicle)
    end
    memoize :list
    alias_method :all, :list

    # Return the vehicle whose id matches the given id
    def get id
      list.find{ |vehicle| vehicle.id == id }
    end
    memoize :get
    alias_method :find, :get

    private

    def on_vehicle
      DoubleMap.configuration.on_vehicle
    end
  end
end
