module DoubleMap
  class Configuration
    # The version of the DoubleMap system
    attr_accessor :version
    # The base URL of the DoubleMap system
    attr_accessor :base_uri
    # The adapter to use for network communication
    attr_accessor :adapter
    # The output stream to which debug information should be written
    attr_accessor :debug_output
    # Optional procs called when a corresponding model object is created,
    # before it is returned to a caller.
    attr_accessor :on_route, :on_stop, :on_vehicle

    # The defaults to use for any configuration options that are not provided
    DEFAULT_CONFIGURATION = {
      version: '3.2', # Taken from a comment on "http://bus.gocitybus.com/RouteMap/Index"
      adapter: :httparty,
      debug_output: false,
      on_route: ->(route){},
      on_stop: ->(stop){},
      on_vehicle: ->(vehicle){},
    }

    # The options required when configuring a DoubleMap instance
    REQUIRED_CONFIGURATION = [
      :base_uri
    ]

    def initialize
      # Apply the default set of configurations before anything else to ensure
      # all options are initialized.
      DEFAULT_CONFIGURATION.each do |name, value|
        send("#{name}=", value)
      end
    end

    # Ensure that all required configurations have been given a value. Returns
    # true if all required configuration options have been set.
    def validate!
      REQUIRED_CONFIGURATION.each do |name|
        raise "`#{name}` is a required configuration option, but was not given a value." if send("#{name}").nil?
      end
      true
    end
  end
end
