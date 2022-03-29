class Public::AddressesController < ApplicationController

  def index
    @address = Address.new
    # @addresses = current_customer.addresses
  end

  def show
  end

  def edit
  end
end
