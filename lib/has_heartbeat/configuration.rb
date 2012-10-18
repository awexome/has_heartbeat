# AWEXOME LABS
# HasHeartbeat : Configuration

module HasHeartbeat

  class Configuration

    # Configurable options:
    attr_accessor :check_model, :use_airbrake

    # Declare defaults on load:
    def initialize
      @check_model = nil
      @use_airbrake = false
    end

    # Does the heartbeat check a database model?
    def check_model?
      !check_model.nil?
    end

    # Set the configuration to use Airbrake notifier:
    def use_airbrake!
      @use_airbrake = true
    end

    # Does this heartbeat check use Airbrake notifier?
    def use_airbrake?
      @use_airbrake == true
    end

  end # Configuration


  # Provide an accessor to the gem configuration:
  class << self
    attr_accessor :configuration
  end

  # Yield the configuration to host:
  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  HasHeartbeat.configuration = Configuration.new

end # HasHeartbeat
