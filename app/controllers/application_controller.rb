class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotDestroyed, with: :not_destroyed
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  private
  def not_destroyed
    render json: {error: "Sorry! Record couldn't be destroyed, try again!"}, status: :unprocessable_entity
  end

  def not_found
    render json: {error: "No record found for this id!"}, status: :unprocessable_entity
  end
end
