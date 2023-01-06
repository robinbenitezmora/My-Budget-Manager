require 'rails_helper'

RSpec.describe '/starts', type: :request do
  include Devise::Test::IntegrationHelpers
  let(:user) do
    User.create(
      name: 'Robin',
      email: 'robinbenitez@yahoo.com',
      password: '123456'
    )
  end

  describe 'GET /starts' do
    before do
      sign_in user
      get new_start_path
    end

    it 'returns the right responds' do
      get '/starts/new'
      expect(response).to have_http_status(200)
    end

    it 'responds html' do
      expect(response.content_type).to eq('text/html')
    end

    it 'renders the new template' do
      expect(response).to render_template(:new)
    end
  end
end
