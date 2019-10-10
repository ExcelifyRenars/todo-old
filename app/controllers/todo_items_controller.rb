class TodoItemsController < ApplicationController
  before_action :set_todo_list
  before_action :set_todo_item, only: [:show, :edit, :update, :destroy]

  def create
    @todo_item = @todo_list.todo_items.create(todo_item_params)
    redirect_to @todo_list
  end

  def destroy
    @todo_item = @todo_list.todo_items.find(params[:id])
    if @todo_item.destroy
      flash[:success] = "Client was removed."
    else
      flash[:error] = "Error - could not remove client."
    end
    redirect_to @todo_list
  end

  def update
    @todo_item = @todo_list.todo_items.update(todo_item_params)
  end

  def show
    @todo_item = @todo_list.todo_items.find(params[:id])
  end

  private

  def set_todo_list
    @todo_list = TodoList.find(params[:todo_list_id])
  end

  def set_todo_item
    @todo_item = @todo_list.todo_items.find(params[:id])
  end

  def todo_item_params
    params.require(:id).permit(:content, :date_added)
  end
end
