class TodoList < ApplicationRecord
  has_many :todo_items, :dependent => :destroy

  def count_total_items
    todo_items.where(:todo_list_id => self.id).count
  end

  def count_completed_items
    todo_items.where.not(:completed_at => nil).count
  end
end
