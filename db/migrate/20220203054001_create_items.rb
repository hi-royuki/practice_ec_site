class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :item_name
      t.string :image_id # 商品画像
      t.text :introduction # 商品説明
      t.integer :no_tax_price # 税抜価格
      t.boolean :is_active, default: false, null: false # 販売ステータス
      t.timestamps
    end
  end
end
