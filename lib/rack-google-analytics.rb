require "active_support/json"
require "active_support/ordered_hash"

require 'rack/google-analytics'

require "tracking/event"
require "tracking/push"

require "google-analytics/instance_methods"

# legacy
require 'rack/google-analytics/legacy/google-analytics'

require "tracking/legacy/custom_var"
require "tracking/legacy/event"
require "tracking/legacy/push"

require "google-analytics/legacy/instance_methods"

ActionController::Base.send(:include, GoogleAnalytics::InstanceMethods) if defined?(ActionController::Base)
ActionController::Base.send(:include, GoogleAnalytics::Legacy::InstanceMethods) if defined?(ActionController::Base)
