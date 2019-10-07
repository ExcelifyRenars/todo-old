class AddLastPaidAtToTodoItems < ActiveRecord::Migration[5.2]
  def change
    add_column :todo_items, :last_paid_at, :datetime
  end
end
