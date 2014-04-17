# AWEXOME LABS
# HasHeartbeat - Routing the check for heartbeat

Rails.application.routes.draw do
  get "heartbeat" => "heartbeat#beat", as:"heartbeat"
end
