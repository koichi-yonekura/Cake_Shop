class Admin::ItemsController < ApplicationController
  def new
    @item = Item.new
    @categories = Category.all
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to admin_item_path(@item.id, @category)
  end

  def index
    @items = Item.all
    @category = @item.category
  end

  def show
    @item = Item.find(params[:id])
    @category = @item.category
  end

  def edit
    @item = Item.find(params[:id])
    @category = @item.category
    @categories = Category.all
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to admin_items_path
  end

  private
  def item_params
    params.require(:item).permit(:category_id, :item_image, :name, :introduction, :price, :is_active)
  end

end
