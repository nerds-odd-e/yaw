# frozen_string_literal: true

module Mountable
  # :nodoc:
  module MountableHelper
    def method_missing(method, *args, &block)
      if respond_to_missing?(method, args)
        main_app.send(method, *args)
      else
        super
      end
    end

    def respond_to_missing?(method, *)
      (method.to_s.end_with?('_path', '_url') && main_app.respond_to?(method)) || super
    end
  end
end
