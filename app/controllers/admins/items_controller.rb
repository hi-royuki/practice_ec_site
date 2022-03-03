class Admins::ItemsController < ApplicationController

before_action :authenticate_admin!,only: [:create,:edit,:update,:index, :show, :new]

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to admins_items_path
  end

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    @item = Item.find(params[:id])
    @item = Item.destroy
    redirect_to admins_items_path

  end


private

  def item_params
    params.require(:item).permit(:item_name, :image, :introduction, :no_tax_price)
  end

end
