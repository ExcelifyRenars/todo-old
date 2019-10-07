class RemoveCompletedAtFromTodoItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :todo_items, :completed_at, :datetime
  end
end
