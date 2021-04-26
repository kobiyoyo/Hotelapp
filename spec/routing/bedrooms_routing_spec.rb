require 'rails_helper'

RSpec.describe BedroomsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/bedrooms').to route_to('bedrooms#index')
    end

    it 'routes to #new' do
      expect(get: '/bedrooms/new').to route_to('bedrooms#new')
    end

    it 'routes to #show' do
      expect(get: '/bedrooms/1').to route_to('bedrooms#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/bedrooms/1/edit').to route_to('bedrooms#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/bedrooms').to route_to('bedrooms#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/bedrooms/1').to route_to('bedrooms#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/bedrooms/1').to route_to('bedrooms#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/bedrooms/1').to route_to('bedrooms#destroy', id: '1')
    end
  end
end
