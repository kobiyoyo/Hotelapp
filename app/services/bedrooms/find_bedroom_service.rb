module Bedrooms
    class FindBedroomService < ActiveInteraction::Base
      integer :id
  
      def execute
        bedroom = Bedroom.find_by_id(id)
        errors.add(:id, 'does not exist') unless bedroom
        bedroom
      end
    end
  end
  