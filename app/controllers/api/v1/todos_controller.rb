class Api::V1::TodosController < ApplicationController 
    
    def index
        todos = Todo.all.where(:user_id => params["user_id"])
        render json: todos
    end 

    def create
        todo = Todo.new(todo_params)
        if todo.save 
            render json: todo, only: [:id, :body, :created_at, :user_id]
        else 
            render json: {error: "Error creating todo."}
        end
    end 

    def destroy
        todo = Todo.find_by(id: params["id"])
        todo.destroy
    end


    private

    def todo_params
        params.require(:todo).permit(:body, :user_id)
    end 
end