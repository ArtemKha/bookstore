class BooksController < ApplicationController
	
	before_action :find_book, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :edit]

	def index
		@books = Book.all.order("created_at DESC").page params[:page]
	end

	def show
	end

	def new
		@book = current_user.books.build
	end

	def create
		@book = current_user.books.build(book_params)
		if @book.save
			redirect_to root_path(@book)
		else
			flash.now[:notice] = @book.errors.empty? ? "Error" : @book.errors.full_messages.to_sentence
			render 'new'
			end
	end

	def edit
	end

	def update
		if @book.update(book_params)
			redirect_to root_path(@book)
		else
			flash.now[:notice] = @book.errors.empty? ? "Error" : @book.errors.full_messages.to_sentence
			render 'edit'
		end
	end
	
	def destroy
		@book.destroy
		redirect_to root_path
	end

	def secret_url    
	  if @book.secret == params[:secret]
	    @book = Book.find(params[:id])
	  else
	    redirect_to root_path
	  end    
	end

	def find_book
		@book = Book.find(params[:id])
	end

	private

		def book_params
			params.require(:book).permit(:title, :description, :author, :book_img, :book_file)
		end
	
end
