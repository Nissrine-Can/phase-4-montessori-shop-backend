class AddCategoriesToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :categories, :string
  end
end
