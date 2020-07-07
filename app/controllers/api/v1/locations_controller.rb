module Api::V1
  class LocationsController < SecuredController

      skip_before_action :authorize_request, only: [:index, :show]

      def index
        locations = Location.all
        render json: locations
      end

      def show
        location = Location.find(params[:id])
        render json: location
      rescue ActiveRecord::RecordNotFound
        head :not_found
      end

      def create
        location = Location.create!(location_params)
        render json: location, status: :created
      end

      def destroy
        location = Location.find(params[:id])
        location.delete
        head :no_content
      end

      private

      def location_params
        params.permit(:slug, :gps)
      end
  end
end