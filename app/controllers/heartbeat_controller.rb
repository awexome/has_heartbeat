# AWEXOME LABS
# HeartbeatController
#
# Useful endpoints for ping and availability services.
#

class HeartbeatController < ActionController::Base

  def index
    begin
      if HasHeartbeat.configuration.check_model?
        Rails.logger.info "Heartbeat checking database against model #{HasHeartbeat.configuration.check_model.to_s}"
        HasHeartbeat.configuration.check_model.send(:first)
      else
        Rails.logger.info "Heartbeat not checking against database"
      end
      raise Exception.new("Funky error occurred in your systemz")
      Rails.logger.info "Application Heart Beating OK"
      render :text => "Application Heart Beating OK"
    rescue Exception => e
      Rails.logger.error "Heartbeat Error: #{e.message}"
      if HasHeartbeat.configuration.use_airbrake?
        Rails.logger.error "Heartbeat notifying Airbrake endpoint."
        ::Airbrake.notify(
          :error_class   => "Heartbeat Failure",
          :error_message => "Heartbeat Failure: #{e.message}",
          :parameters    => params
        )
      else
        Rails.logger.error "Heartbeat not notifying Airbrake endpoint."
      end
      render :text => "500 Internet Server Error: Application Heart Palpitations", :status => 500
    end
  end

end

