require 'rails_helper'

RSpec.describe '/clusters', type: :request do
  include Devise::Test::IntegrationHelpers
  let(:user) do
    User.create(
      name: 'Robin',
      email: 'robinbenitez@yahoo.com',
      password: '123456'
    )
  end

  let(:category) do
    user.categories.create(
      name: 'Food',
      icon: 'http://fasfa-utensils',
      user_id: user.id
    )
  end

  let(:valid_attributes) do
    {
      name: 'Food',
      icon: 'http://fasfa-utensils',
      user_id: user.id
    }
  end

  let(:invalid_attributes) do
    {
      name: nil,
      icon: nil,
      user_id: nil
    }
  end

  describe 'GET /index' do
    before do
      sign_in user
      get clusters_path
    end

    it 'renders a successful response' do
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    before do
      sign_in user
      get cluster_path(category)
    end
  end

  describe 'GET /new' do
    before do
      sign_in user
      get new_cluster_path
    end

    it 'returns a new category' do
      get '/clusters/new'
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /categories' do
    before do
      sign_in user
      get new_cluster_path
    end

    it 'returns a new category' do
      get '/clusters/new'
      expect(response).to have_http_status(200)
    end
  end
end
