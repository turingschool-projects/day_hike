require 'rails_helper'

describe Trip, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name}
    it { should validate_presence_of :start_date }
    it { should validate_presence_of :end_date }
  end
end
