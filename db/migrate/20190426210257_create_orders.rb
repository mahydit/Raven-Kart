class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.datetime :purchased_at
      t.integer :total_price, null: false
      t.integer :total_price_after_sale
      t.references :user, foreign_key: true, null: false
      t.references :status, foreign_key: true, null: false
      t.references :coupon, foreign_key: true

      t.timestamps
    end
  end
end
