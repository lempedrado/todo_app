class TodoController < ApplicationController
    def index
        @todos=Todo.all
    end
    def show 
        @title="Workshop To-do List"
        @todo=Todo.find_by_id(params[:id])
        @todo_description=@todo.description
        @todo_pomodoro_estimate=@todo.pomodoro_estimate
    end
    def new
        
    end
    def create
         t = Todo.new
         t.description = params['description']
         t.pomodoro_estimate = params['pomodoro_estimate']
         t.save
         redirect_to "/todo/show/#{ t.id }"
    end
    def edit
        @todo=Todo.find_by_id(params[:id])
    end
    def update
        t=Todo.find_by_id(params[:id])
        t.description=params['description']
        t.pomodoro_estimate=params['pomodoro_estimate']
        t.save
        redirect_to "/todo/show/#{t.id}"
    end
    def destroy
        t=Todo.find_by_id(params[:id])
        t.destroy
        redirect_to "/todo/index"
    end
end