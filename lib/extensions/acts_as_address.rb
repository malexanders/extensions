require 'active_support/concern'

module Addresses
  extend ActiveSupport::Concern

  included do
  end

  module ClassMethods
    def acts_as_address
      class_eval do
        # define our validators and associations
        validates_presence_of :line_1, :city, :state, :zip_code, :phone_number
        validates_length_of :line_1, :maximum => 256
        validates_length_of :line_2, :maximum => 256
        validates_length_of :city, :maximum => 128
        validates_length_of :state, :maximum => 2
      end
    end
  end
end

