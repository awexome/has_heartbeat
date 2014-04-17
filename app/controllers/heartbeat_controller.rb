# AWEXOME LABS
# HeartbeatController
#
# Useful endpoints for ping and availability services.
#

class HeartbeatController < ActionController::Base

  def beat
    begin
      if HasHeartbeat.configuration.check_db?
        Rails.logger.info "HasHeartbeat checking database connection is active."
        raise Exception.new("HasHeartbeat: Database not connected.") unless ActiveRecord::Base.connected?
      else
        Rails.logger.debug "HasHeartbeat not checking database connection."
      end
      Rails.logger.info HasHeartbeat.configuration.ok_text
      render text: HasHeartbeat.configuration.ok_text

    rescue Exception => e
      if HasHeartbeat.configuration.use_airbrake?
        Rails.logger.error "Heartbeat notifying Airbrake endpoint, if configured."
        ::Airbrake.notify(
          :error_class   => "Heartbeat Failure",
          :error_message => "Heartbeat Failure: #{e.message}",
          :parameters    => params
        )
      else
        Rails.logger.error "Heartbeat not notifying Airbrake endpoint."
      end

      render text: HasHeartbeat.configuration.fail_text, status: HasHeartbeat.configuration.fail_status
    end

  end

end

