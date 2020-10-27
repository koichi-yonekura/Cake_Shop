class Admin::CategoriesController < ApplicationController
  def index
  	@category = Category.new
  end

  def create
  	@category = Category.new(category_params)
  end

  def edit
  end

  def update
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end

end
