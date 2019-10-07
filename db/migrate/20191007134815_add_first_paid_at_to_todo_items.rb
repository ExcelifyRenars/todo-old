class AddFirstPaidAtToTodoItems < ActiveRecord::Migration[5.2]
  def change
    add_column :todo_items, :first_paid_at, :datetime
  end
end
