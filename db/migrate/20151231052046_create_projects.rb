class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.string :user_id, null: false
      t.timestamps null: false
    end
    add_foreign_key :users, :projects, column: :user_id
  end
end
