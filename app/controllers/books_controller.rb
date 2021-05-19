class BooksController < ApplicationController
  def index
  @books = Book.all
  end

  def show
     @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    flash[:notice] = "Book was successfully created."
    redirect_to book_path(book.id)
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
  end

private

  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end