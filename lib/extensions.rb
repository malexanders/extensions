require "active_record"
require "extensions/version"
require "extensions/acts_as_address"

ActiveRecord::Base.send :include, Addresses
