require 'rails_helper'

RSpec.describe Student, type: :model do
  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:register_number) }
    it { should validate_uniqueness_of(:register_number) }
  end

  context 'relationships' do
    it { should have_many(:enrollments) }
    it { should have_many(:courses) }
  end

  describe 'dependent' do
    it 'destroy enrollments relationships' do
      student = FactoryGirl.create(:valid_student)
      course  = FactoryGirl.create(:valid_course)
      Enrollment.create(student: student, course: course, entry_at: Date.today)

      expect { student.destroy }.to change { Enrollment.count }.by(-1)
    end
  end
end
