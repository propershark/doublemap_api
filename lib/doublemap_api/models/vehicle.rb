module DoubleMap
  class Vehicle < Model
    # The unique id used when referencing this vehicle
    attribute :id
    # The name given to this vehicle
    attribute :name
    # The latitudinal position of this vehicle
    attribute :lat
    alias_method :latitude, :lat
    # The longitudinal position of this vehicle
    attribute :lon
    alias_method :longitude, :lon
    # NOTE: The purpose of this field is unknown, as it is almost always given
    # a value of `null`.
    attribute :heading
    # The route this vehicle is currently traveling
    attribute :route
    # The last stop that this vehicle departed from
    attribute :last_stop
    # NOTE: The purpose of this field is unknown, as it is almost always given
    # a value of `null`.
    # It's default value is a Hash, so the assumed purpose is extra information
    # about the route that doesn't conform to the API schema.
    attribute :fields
    # The time at which this vehicle was last updated. Stored as seconds since
    # the Unix epoch.
    attribute :last_update


    primary_attribute :id
  end
end
