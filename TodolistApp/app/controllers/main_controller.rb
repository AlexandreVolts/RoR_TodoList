class MainController < ApplicationController
  def home
    @todos = Todo.all
  end
  def error
    @error = "An error occured."
  end
  def add
    Todo.create(content: params[:content],
                date: DateTime.now,
                author: params[:author])
    redirect_to("/")
  end
end
