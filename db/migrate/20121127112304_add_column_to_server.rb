class AddColumnToServer < ActiveRecord::Migration
  def change
    add_column :servers, :launch_on, :date

  end
end
