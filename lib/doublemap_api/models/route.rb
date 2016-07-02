module DoubleMap
  class Route < Model
    # The unique id used when referencing this route
    attribute :id
    # The full name of this route
    attribute :name
    # The name used to quickly identify this route
    attribute :short_name
    # A short summary of the purpose of this route
    attribute :description
    # The hexadecimal color to use when displaying this route
    attribute :color
    # The list of lat/lon points that this route passes through
    attribute :path
    # The time of day that this route becomes active
    attribute :start_time
    # The time of day that this route stops being active
    attribute :end_time
    # The url where schedule information for this route can be found
    attribute :schedule_url
    # Is the route currently an active route being serviced
    attribute :active
    alias_method :active?,    :active
    alias_method :is_active,  :active
    # NOTE: The purpose of this field is unknown, as it is almost always given
    # a value of `null`.
    # It's default value is a Hash, so the assumed purpose is extra information
    # about the route that doesn't conform to the API schema.
    attribute :fields
    # The list of stop ids that this route passes through.
    attribute :stops


    primary_attribute :id
  end
end
