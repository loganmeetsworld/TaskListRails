class TasksController < ApplicationController
	def index
		@tasks = Task.all
	end

	def show
		@task = Task.find(params[:id])
	end

	def new 
		@task = Task.new
	end

	def delete
		@task = Task.destroy(params[:id])

		redirect_to "/"
	end

	# def edit
	# 	@task = Task.find(params[:id])
	# 	render :new
	# end

	def create
		Task.create(task_params[:task])
		redirect_to "/"
	end

	private

	def task_params
		params.permit(task:[:name, :description])
	end
end
