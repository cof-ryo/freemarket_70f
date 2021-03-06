class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :nickname, null: false
      t.string :description, null: false
      t.string :status, null: false
      t.string :shipping_charges, null: false
      t.string :area, null: false
      t.string :days, null: false
      t.integer :price, null: false
      t.integer :soldout, default: "0" 
      t.integer :prefecture_id
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false,foreign_key: true
      t.timestamps
    end
  end
end