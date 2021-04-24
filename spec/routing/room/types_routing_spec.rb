require 'rails_helper'

RSpec.describe Room::TypesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/room/types').to route_to('room/types#index')
    end

    it 'routes to #new' do
      expect(get: '/room/types/new').to route_to('room/types#new')
    end

    it 'routes to #show' do
      expect(get: '/room/types/1').to route_to('room/types#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/room/types/1/edit').to route_to('room/types#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/room/types').to route_to('room/types#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/room/types/1').to route_to('room/types#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/room/types/1').to route_to('room/types#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/room/types/1').to route_to('room/types#destroy', id: '1')
    end
  end
end
