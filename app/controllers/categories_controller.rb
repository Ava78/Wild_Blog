class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

   def show
    @categories = Category.all
    @categories = Category.find(params[:id])
  end
  
  def create
    Category.create title: params[:title], description: params[:description], category_id: params[:category_id]
    redirect_to "/categories/index"
  end

  def update
    @categories = Category.find(params[:id])
    @categories.title = params[:title]
    @categories.save
    redirect_to "/categories/#{params[:id]}"
  end

  def destroy
    @categories = Category.find(params[:id])
    @categories.destroy
    redirect_to "/categories"
  end

end