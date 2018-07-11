class MainController < ApplicationController
  def home
    @todos = Todo.all
  end
  def error
    if params[:error] == "1"
      @error = "Can't find selected todo element."
    else
      @error = "An unknow error occured."
    end
  end
  def add
    Todo.create(content: params[:content],
                date: DateTime.now,
                author: params[:author])
    redirect_to("/")
  end
  def show
    @todo = Todo.find_by(id: params[:id])
    if @todo == nil
      redirect_to("/error/1")
    end
  end
end
