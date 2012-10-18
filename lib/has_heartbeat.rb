# AWEXOME LABS
# HasHeartbeat

require "has_heartbeat"
require "rails"
require "action_controller"
require "airbrake"

require "has_heartbeat/configuration"

module HasHeartbeat

  # Add features to Rails as an Engine:
  class Engine < Rails::Engine
  end
  
  # Return the current version of the gem:
  def self.version
    Gem.loaded_specs["doesopengraph"].version.to_s
  end
  
end # HasHeartbeat

