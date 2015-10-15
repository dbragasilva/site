class Enrollment < ActiveRecord::Base
  belongs_to :course
  belongs_to :student

  validates :course, :student, :entry_at, presence: true
end