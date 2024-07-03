class CreateAdminStocks < ActiveRecord::Migration[7.1]
  def change
    create_table :admin_stocks do |t|
      t.string :size,  limit: 191
      t.integer :amount
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
