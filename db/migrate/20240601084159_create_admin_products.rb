class CreateAdminProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name, limit: 191
      t.text :description
      t.string :price, limit: 191
      t.string :integer, limit: 191
      t.references :category, null: false, foreign_key: true
      t.boolean :active

      t.timestamps
    end
  end
end
