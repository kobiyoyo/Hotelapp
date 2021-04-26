module Bedrooms
  class ListBedroomService < ActiveInteraction::Base
    def execute
      Bedroom.all
    end
  end
end
