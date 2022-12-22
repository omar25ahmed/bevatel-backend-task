require 'rails_helper'

RSpec.describe 'Student', type: :request do
  before(:all) do
    @user = User.create(email: 'test@test.test.com', password: '12345678', name: 'Test', surname: 'Test')
    @school = School.create(name: 'Test School')
    @student = Student.create(name: 'Test Student', school: @school)
  end

  describe 'PUT /api/v1/students' do
    it 'should update student' do
      put "/api/v1/students/#{Student.first.id}", params: { student: { name: 'Test Student 2' } }, headers: { 'ACCEPT' => 'application/json', 'email' => @user.email, 'password' => @user.password }
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)['name']).to eq('Test Student 2')
    end
  end
end