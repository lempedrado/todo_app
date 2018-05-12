class TodoController < ApplicationController
    def index
        @title="Workshop To-do List"
    end
    def show 
        @todo_count=4
        @title="Workshop To-do List"
        todo_id=[:id]
        if todo_id='1'
            @todo_description='Make the curriculum'
        elsif todo_id='2'
            @todo_description='Buy workshop supplies'
        end    
    end
end