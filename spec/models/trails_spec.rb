require 'rails_helper'

RSpec.describe Trail, type: :model do
  describe 'validations' do
    it { should validate_presence_of :length }
    it { should validate_presence_of :name }
    it { should validate_presence_of :address }

    it { should validate_numericality_of(:length).only_integer }
    it { should validate_numericality_of(:length).is_greater_than(0) }
  end
  describe 'relationships' do
    it {should have_many :trail_trips}
    it {should have_many :trips}
  end
end
