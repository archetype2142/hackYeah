class Api::ApplicationController < ApplicationController
  rescue_from StandardError do |e|
    render json: { error: e.message }, status: :bad_request
  end
end 