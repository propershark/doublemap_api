module DoubleMap
  class Stop < Model
    # The unique id used when referencing this stop
    attribute :id
    # The name of this stop
    attribute :name
    # A short summary of the purpose of this stop
    attribute :description
    # The latitudinal position of this stop
    attribute :lat
    alias_method :latitude, :lat
    # The longitudinal position of this stop
    attribute :lon
    alias_method :longitude, :lon
    # NOTE: The purpose of this field is unknown, as it is almost always given
    # a value of `null`.
    attribute :buddy
    # NOTE: The purpose of this field is unknown, as it is almost always given
    # a value of `null`.
    # It's default value is a Hash, so the assumed purpose is extra information
    # about the route that doesn't conform to the API schema.
    attribute :fields


    primary_attribute :id
  end
end
