class Admins::ItemsController < ApplicationController
before_action :authenticate_admin!,only: [:create,:edit,:update,:index, :show, :new]

  def new 
  end
  
  def index
  end

  def show
  end

  def edit
  end
  
  def update
  end
  
  
end
