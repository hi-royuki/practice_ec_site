class Admins::CustomersController < ApplicationController

  def index

    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
  end

  def update
  end

  private

  def customer_params
    params.require(:customer).permit(:email, :last_name, :first_name, :last_name_kana, :first_name_kana, :post_code, :prefecture_code, :city_code, :street, :other_address, :telephone_number, :is_active)
  end

end
