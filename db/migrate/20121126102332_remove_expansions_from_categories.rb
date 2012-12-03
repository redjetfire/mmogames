class RemoveExpansionsFromCategories < ActiveRecord::Migration
  def up
    remove_column :categories, :expansions
      end

  def down
    add_column :categories, :expansions, :string
  end
end
