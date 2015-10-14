class Student < ActiveRecord::Base
  validates :name, presence: true
  validates :register_number, uniqueness: true, presence: true
end
