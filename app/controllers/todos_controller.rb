class TodosController < ApplicationController
	
	before_action :set_todo, only: [:edit, :show, :update, :destroy]

	def new
		@todo=Todo.new
	end

	def create
		@todo = Todo.new(todo_params)
		if @todo.save
			redirect_to todo_path(@todo)
			flash[:notice] ="Todo Created successfully"
		else
			render 'new'
		end
	end

	def show
		
	end

	def edit
		
		
	end

	def update
		
		if @todo.update(todo_params)
			redirect_to todo_path(@todo)
			flash[:notice] ="Todo updated successfully"
		else
			render 'edit'
		end
	end

	def index
		@todos=Todo.all
	end

	def destroy
		
		@todo.destroy
		flash[:notice]="Todo Deleted successfully"
		redirect_to todos_path
	end

	def set_todo
		@todo=Todo.find(params[:id])
	end
	private
	def todo_params
		params.require(:todo).permit(:name,:description)
	end


end