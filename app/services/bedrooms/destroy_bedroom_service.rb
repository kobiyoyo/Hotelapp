module Bedrooms
    class DestroyBedroomService < ActiveInteraction::Base
        object :bedroom, class: 'Bedroom'
        def execute
            bedroom.destroy
        end
    end
  end
  