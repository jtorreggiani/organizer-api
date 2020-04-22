module Api
  module V1
    class RootController < ApplicationController
      def index
        render json: { version: 1, active: true }
      end
    end
  end
end
