require 'action_controller'
require 'responders/flash'

module Responders
  class AppResponder < ActionController::Responders
    include Flash
  end
end

ActionController::Base.responder = Responders::AppResponder
require 'active_support/il8n'
Il8n.load_path << File.expand_path('../responders/locales/en/yml', __FILE__)
