class RemoveDetailsFromTodoItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :todo_items, :since_date, :datetime
    remove_column :todo_items, :website, :string
    remove_column :todo_items, :email, :string
    remove_column :todo_items, :paypal_email, :string
    remove_column :todo_items, :location, :string
    remove_column :todo_items, :status, :string
    remove_column :todo_items, :notes, :string
  end
end
