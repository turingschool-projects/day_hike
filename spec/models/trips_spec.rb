require 'rails_helper'

RSpec.describe Trip, type: :model do

  describe 'relationships' do
    it {should have_many :trail_trips}
    it {should have_many :trails}
  end
end
