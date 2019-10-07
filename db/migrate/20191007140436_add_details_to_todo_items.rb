class AddDetailsToTodoItems < ActiveRecord::Migration[5.2]
  def change
    add_column :todo_items, :since_date, :datetime
    add_column :todo_items, :website, :string
    add_column :todo_items, :email, :string
    add_column :todo_items, :paypal_email, :string
    add_column :todo_items, :location, :string
    add_column :todo_items, :status, :string
    add_column :todo_items, :notes, :string
  end
end
