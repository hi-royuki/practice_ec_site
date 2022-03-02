class Item < ApplicationRecord

# 画像投稿
  attachment :image

# バリデーション
  validates :item_name, presence: true
  validates :image, presence: true
  validates :introduction, presence: true
  validates :no_tax_price, presence: true

end
