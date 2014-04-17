# AWEXOME LABS
# HasHeartbeat : Configuration

module HasHeartbeat

  class Configuration

    # Configurable options:
    attr_accessor :check_db, :ok_text, :fail_text, :fail_status, :use_airbrake

    # Declare defaults on load:
    def initialize
      @check_db = true        # Can be turned off with check_db!
      @use_airbrake = false   # Can be turned on with use_airbrake!

      # Default status texts:
      @ok_text = "Application Heart Beating OK"
      @fail_text = "500 Internet Server Error: Application Heart Palpitations"
      @fail_status = 500
    end

    # Set heartbeat to check that database is connected:
    def check_db!(on=true)
      @check_db = on
    end

    # Does this heartbeat check the database connection?
    def check_db?
      @check_db == true
    end

    # Deprecated check_model configuration sets check_db for now:
    def check_model=(klass)
      ActiveSupport::Deprecation.warn("HasHeartbeat: check_model method is no longer supported and will be removed in the next version. Use check_db! instead.")
      @check_model = klass
      check_db!(true)
    end
    def check_model
      ActiveSupport::Deprecation.warn("HasHeartbeat: check_model method is no longer supported and will be removed in the next version. Use check_db! instead.")
      @check_model
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
