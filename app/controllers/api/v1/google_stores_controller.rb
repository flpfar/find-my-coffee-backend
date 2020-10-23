module Api
  module V1
    class GoogleStoresController < ApplicationController
      def index
        places = GetGoogleCoffeeListService.new(params[:latitude], params[:longitude]).call
        render json: places
      end

      def show
        place = GetGoogleCoffeeDetailsService.new(params[:id]).call
        render json: place
      end
    end
  end
end
