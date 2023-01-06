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

  describe 'GET /clusters' do
    before do
      sign_in user
      get cluster_path
    end

    it 'returns the right responds' do
      get '/clusters/new'
      expect(response).to have_http_status(200)
    end

    it 'responds html' do
      expect(response.content_type).to eq('text/html')
    end

    it 'renders the new template' do
      expect(response).to render_template(:new)
    end

    it 'returns all clusters/categories' do
      get '/clusters'
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

    it 'responds html' do
      expect(response.content_type).to eq('text/html')
    end
  end
end
