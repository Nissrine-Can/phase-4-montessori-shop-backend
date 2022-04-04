class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.float :price
      t.boolean :sold, default: false
      t.references :seller, foreign_keys: { to_table: :users }
      t.references :buyer, foreign_keys: { to_table: :usres }

      t.timestamps
    end
  end
end
