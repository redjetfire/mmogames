class AddColumnToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :description, :text

    add_column :categories, :offsite, :string

    add_column :categories, :released, :string

    add_column :categories, :races, :string

    add_column :categories, :classes, :string

    add_column :categories, :expansions, :string

  end
end
