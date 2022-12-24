class Student < ApplicationRecord
  acts_as_paranoid
  belongs_to :school
  before_create :set_ordering
  after_destroy :fix_ordering

  def set_ordering
    self.ordering = school.students.maximum(:ordering).to_i + 1
  end

  def fix_ordering
    school.students.where('ordering > ?', ordering).update_all('ordering = ordering - 1')
    update(ordering: nil)
  end
end
