class Student < ApplicationRecord
  acts_as_paranoid
  belongs_to :school
  before_create :set_order
  after_destroy :set_order_after_destroy

  def set_order
    self.order = school.students.count + 1
  end

  def set_order_after_destroy
    self.update(order: nil)
    school.students.each_with_index do |student, index|
      student.update(order: index + 1)
    end
  end
end
