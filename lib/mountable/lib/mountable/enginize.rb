# frozen_string_literal: true

require 'draper'
require 'responders'
require_relative 'mountable_helper'

module Mountable
  module Enginizer
    def _prepare(module_name)
      module_ = module_name.constantize
      isolate_namespace module_
      config.to_prepare do
        # so that I can use safe_join
        Draper::Decorator.send(:include, ActionView::Helpers::OutputSafetyHelper)
        [Mountable::MountableHelper, Rails.application.helpers].each { |h| module_.const_get('ApplicationController').helper h }
        Dir.glob(Rails.root + "app/#{module_name.underscore}/*_patch*.rb").each(&method(:require_dependency))
      end
    end

    def enginize
      _prepare(name.split('::').first)

      config.generators do |g|
        g.test_framework :rspec, fixture: false
        g.fixture_replacement :factory_girl, dir: 'spec/factories'
        g.assets false
        g.helper false
      end

      config.generators do |g|
        g.template_engine :haml
      end
    end
  end
end

::Rails::Engine.class_eval do
  extend Mountable::Enginizer
end
