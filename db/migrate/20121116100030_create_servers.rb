class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :name
      t.integer :follower_id
      t.integer :category_id

      t.timestamps
    end
  end
end
