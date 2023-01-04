require 'rails_helper'

RSpec.describe StartsController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(get: '/starts').to route_to('starts#index')
    end

    it 'routes to #new' do
      expect(get: '/starts/new').to route_to('starts#new')
    end

    it 'routes to #show' do
      expect(get: '/starts/1').to route_to('starts#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/starts/1/edit').to route_to('starts#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/starts').to route_to('starts#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/starts/1').to route_to('starts#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/starts/1').to route_to('starts#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/starts/1').to route_to('starts#destroy', id: '1')
    end

  end
end
