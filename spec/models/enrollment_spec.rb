require 'rails_helper'

RSpec.describe Enrollment, type: :model do
  context 'validations' do
    it { should validate_presence_of(:course) }
    it { should validate_presence_of(:student) }
    it { should validate_presence_of(:entry_at) }
  end

  context 'relationships' do
  	it { should belong_to(:course) }
  	it { should belong_to(:student) }
  end

  
end
