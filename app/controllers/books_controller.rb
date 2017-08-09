class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @books = Book.find(params[:id])
  end

  def edit
  end

  def add
    if request.post? then
			Book.create(book_params)
			goback
		else
			@books = Book.new
    end
  end
  
  private
	def book_params
		params.require(:book).permit(:title, :author, :price, :publisher, :memo)
	end

	private
	def goback
		redirect_to '/books'
	end
end
