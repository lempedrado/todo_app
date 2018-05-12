class TodoController < ApplicationController
    def index
        @title="Workshop To-do List"
    end
    def show 
        @todo_count=4
        @title="Workshop To-do List"
    end
end