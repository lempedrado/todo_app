class TodoController < ApplicationController
    def index
        @title="Workshop To-do List"
    end
    def show 
        @title="Workshop To-do List"
        todo_id=params[:id]
        if todo_id=='1'
            @todo_description='Make the curriculum'
        elsif todo_id=='2'
            @todo_description='Buy workshop supplies'
        elsif todo_id=='3'
            @todo_description='Meet with the volunteer trainers'
        elsif todo_id=='4'
            @todo_description='Order food for Saturday and Sunday'
        elsif todo_id=='5'
            @todo_description='Check pre-work assignments'
        elsif todo_id=='6'
            @todo_description='Send workshop location to all the students'
        elsif todo_id=='7'
            @todo_description='Have a great workshop'
        end    
    end
end