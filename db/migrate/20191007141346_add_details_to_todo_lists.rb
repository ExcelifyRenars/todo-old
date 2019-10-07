class AddDetailsToTodoLists < ActiveRecord::Migration[5.2]
  def change
    add_column :todo_lists, :website, :string
    add_column :todo_lists, :email, :string
    add_column :todo_lists, :paypal_email, :string
    add_column :todo_lists, :location, :string
    add_column :todo_lists, :status, :string
    add_column :todo_lists, :percentage, :integer
  end
end
