class TodosController < ApplicationController
  def index
    @todos = TodoList.all
  end

  def new
    @todo = TodoList.new
  end

  def show
    @todo = TodoList.find(params[:id])
  end

  def edit
    @todo = TodoList.find(params[:id])
  end

  def create
    @todo = TodoList.new(todo_params)

    if @todo.save
      redirect_to todo_path
    else
      render :new
    end
  end

end
