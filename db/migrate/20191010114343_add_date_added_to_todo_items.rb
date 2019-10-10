class AddDateAddedToTodoItems < ActiveRecord::Migration[5.2]
  def change
    add_column :todo_items, :date_added, :datetime
  end
end
