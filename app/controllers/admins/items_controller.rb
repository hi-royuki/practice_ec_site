class Admins::ItemsController < ApplicationController

before_action :authenticate_admin!,only: [:create,:edit,:update,:index, :show, :new]

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redilrect_to admins_items_path
  end

  def index
    @items = Item.all
  end

  def show
  end

  def edit
  end

  def update
  end


end
