class Api::V1::TodosController < ApplicationController 
    before_action :authenticate
    
    def index
        todos = Todo.all.where(:user_id => @user.id)
        render json: todos
    end 

    def create
        todo = @user.todos.build(todo_params)
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
        params.require(:todo).permit(:body)
    end 
end