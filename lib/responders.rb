require 'action_controller'
require 'responders/flash'
require 'responders/http_cache'

module Responders
  class AppResponder < ActionController::Responders
    include Flash
    include HttpCache
  end
end

ActionController::Base.responder = Responders::AppResponder
require 'active_support/il8n'
Il8n.load_path << File.expand_path('../responders/locales/en/yml', __FILE__)
