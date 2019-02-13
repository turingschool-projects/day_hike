require 'rails_helper'

describe Trip, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should have_many :triptrails }
    it { should have_many :trails}
  end
end
