class AddColumnCategoryToSparks < ActiveRecord::Migration
  def change
    add_column :sparks, :category, :string
  end
end
