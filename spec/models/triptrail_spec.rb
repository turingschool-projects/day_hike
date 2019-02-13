require 'rails_helper'

describe Triptrail, type: :model do
  describe 'validations' do
    it { should belong_to :trip }
    it { should belong_to :trail }
  end
end
