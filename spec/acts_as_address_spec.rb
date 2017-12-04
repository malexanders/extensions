require 'spec_helper'

class Address < ActiveRecord::Base
  acts_as_address
end

RSpec.describe Address, type: :model do
  context "Application Layer Validations" do
    it { is_expected.to validate_presence_of(:line_1) }
    it { is_expected.to validate_presence_of(:city) }
    it { is_expected.to validate_presence_of(:state) }
    it { is_expected.to validate_presence_of(:zip_code) }
    it { is_expected.to validate_presence_of(:phone_number) }

    it { is_expected.to validate_length_of(:line_1).is_at_most(256) }
    it { is_expected.to validate_length_of(:line_2).is_at_most(256) }
    it { is_expected.to validate_length_of(:city).is_at_most(128) }
    it { is_expected.to validate_length_of(:state).is_at_most(2) }
  end
end

