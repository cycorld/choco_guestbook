class HomeController < ApplicationController
  def index
    @books = Book.all.reverse
  end

  def about

  end

  def write
  	book = Book.new
  	book.name = params[:na]
  	book.content = params[:content]
  	book.save
  	redirect_to '/'
  end

  def delete
  	b = Book.find(params[:id])
  	b.destroy
  	redirect_to '/'
  end

  def modify
  	@book = Book.find(params[:id])
  end

  def update
  	b = Book.find(params[:id])
  	b.name = params[:na]
  	b.content = params[:content]
  	b.save
  	redirect_to '/'
  end
end
