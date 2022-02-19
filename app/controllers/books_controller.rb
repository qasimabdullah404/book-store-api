class BooksController < ApplicationController
  def index
    render json: {"message": "A book store API. Access over /api/v1/books"}
  end
end
