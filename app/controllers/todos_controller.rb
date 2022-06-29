class TodosController < ApplicationController
  def index
    @todo_list = Todo.all
  end

  def new
    todo =Todo.new
  end

  def create
    todo = Todo.new( todo_params )
    if todo.save
      @todo_list = Todo.all
      render "todos/list"
  end
end

def delete
  @del = Todo.find(params[:id])
  if @del.destroy
    @todo_list = Todo.all
    render "todos/list"
  end 
end

def update
  id = params[:id]
  todo=Todo.find(id)
  todo.status = true
  if todo.save
    @todo_list = Todo.all
    render "todos/list"
  end
end

private 

def todo_params
  params.require(:todo).permit(:task,:date,:status)
end

end

