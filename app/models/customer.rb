class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :post_code, presence: true
  validates :prefecture_code, presence: true
  validates :city_code, presence: true
  validates :street, presence: true
  validates :telephone_number, presence: true

  # def full_name
  #   customer.last_name + customer.first_name
  # end

  def active_for_authentication?
    super && (self.is_active == true)
  end

end
