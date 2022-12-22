require 'rails_helper'

RSpec.describe Student, type: :model do
  before(:all) do
    @school = School.create(name: 'Test School')
    @student = Student.create(name: 'Test Student', school: @school)
  end

  describe 'associations' do
    it 'should belong to school' do
      expect(@student.school).to eq(@school)
    end
  end

  describe 'callbacks' do
    it 'should set order' do
      expect(@student.order).to eq(1)
    end

    it 'should set order after destroy' do
      @student.destroy
      expect(@student.order).to eq(nil)
    end
  end
end
