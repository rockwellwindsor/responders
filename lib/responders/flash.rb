module Responders
  module Flash
    def to_html
      set_flash_message! unless get?
      super
    end

    private

    def set_flash_message!
      status = has_errors? ? :alert : :notice
      return if controller.flash[status].present?

      message = il8n_lookup(status)
      controller.flash[status] = message if message.present?
    end

    def il8n_lookup(status)
      namespace = controller.controller_path.gsub("/", ".")
      action    = controller.action_name
      lookup    = [namespace, action, status].join(".").to_sym
      default   = ["actions", action, status].join(".").to_sym
      Il8n.t(lookup, scope: :flassh, default: default, resource_name: resource.class.model_name.human)
    end
  end
end
