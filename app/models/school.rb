class School < ApplicationRecord
  acts_as_paranoid
  has_many :students
end
