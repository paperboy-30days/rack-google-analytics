require "active_support/json"
require "active_support/ordered_hash"

require 'rack/google-analytics'

require "tracking/event"
require "tracking/push"

require "google-analytics/instance_methods"

# legacy
require 'legacy/rack/google-analytics'

require "legacy/tracking/custom_var"
require "legacy/tracking/event"
require "legacy/tracking/push"

require "legacy/google-analytics/instance_methods"

ActionController::Base.send(:include, GoogleAnalytics::InstanceMethods) if defined?(ActionController::Base)
ActionController::Base.send(:include, GoogleAnalytics::Legacy::InstanceMethods) if defined?(ActionController::Base)
