class CreateTodoLists < ActiveRecord::Migration[5.1]
  def change
    create_table :todo_lists do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.boolean :complete, default: false

      t.timestamps
    end
  end
end
