# frozen_string_literal: true

require 'rails_helper'

module FeatureUser
  RSpec.describe User, type: :model do
    it 'is valid with a name' do
      user = User.create(name: 'test')
      expect(user).to be_valid
    end
  end
end
