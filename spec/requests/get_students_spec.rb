require 'rails_helper'

RSpec.describe 'Student', type: :request do
  before(:all) do
    @user = User.create(email: 'test@test.test.com', password: '12345678', name: 'Test', surname: 'Test')
    @school = School.create(name: 'Test School')
    @student = Student.create(name: 'Test Student', school: @school)
  end

  describe 'GET /api/v1/students' do
    it 'should return all students' do
      get '/api/v1/students', headers: { 'ACCEPT' => 'application/json', 'email' => @user.email, 'password' => @user.password }
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(School.all.size)
    end

    it 'should return student' do
      get "/api/v1/students/#{Student.first.id}", headers: { 'ACCEPT' => 'application/json', 'email' => @user.email, 'password' => @user.password }
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)['name']).to eq(Student.first.name)
    end
  end
end