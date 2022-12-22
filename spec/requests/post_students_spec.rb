require 'rails_helper'

RSpec.describe 'Student', type: :request do
  before(:all) do
    @user = User.create(email: 'test@test.test.com', password: '12345678', name: 'Test', surname: 'Test')
  end

  describe 'POST /api/v1/students' do
    it 'should create student' do
      post '/api/v1/students', params: { student: { name: 'Test Student', school_id: School.first.id } }, headers: { 'ACCEPT' => 'application/json', 'email' => @user.email, 'password' => @user.password }
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)['name']).to eq('Test Student')
    end

    it 'should not create student' do
      post '/api/v1/students', params: { student: { name: 'Test Student', school_id: nil } }, headers: { 'ACCEPT' => 'application/json', 'email' => @user.email, 'password' => @user.password }
      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
end