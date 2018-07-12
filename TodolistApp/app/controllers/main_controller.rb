class MainController < ApplicationController
  def home
    @todos = Todo.all
  end
  
  def error
    if params[:error] == "1"
      @error = "Can't find selected element."
    elsif params[:error] == "2"
      @error = "An input contains an invalid number of characters."
    elsif params[:error] == "404"
      @error = "WELCOME TO THE LEGENDARY, THE GORGEOUS, THE ONLY ONE 404 ERROR."
    else
      @error = "An unknow error occured."
    end
  end
  
  def add
    if params[:content].length < 5 || params[:content].length > 50
      redirect_to("/error/2")
      return
    end
    if params[:content].length < 2 || params[:content].length > 20
      redirect_to("/error/2")
      return
    end
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
  
  def delete
    @todo = Todo.find_by(id: params[:id])
    if @todo == nil
      redirect_to("/error/1")
    end
    @todo.destroy()
    redirect_to("/")
  end

  def not_found
    redirect_to("/error/404")
  end
end
