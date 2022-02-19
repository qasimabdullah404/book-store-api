class Api::V1::BooksController < ApplicationController
  def index
    render json: Book.all
  end

  def create
    book = Book.new(book_params)

    if book.save
      render json: book, status: :created
    else
      render json: book.error, status: :unprocessable_entity
    end
  end

  private
  def book_params
    params.require(:book).permit(:name, :author)
  end
end
