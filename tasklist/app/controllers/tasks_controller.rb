class TasksController < ApplicationController
	def index
		@tasks = Task.all
		@tasks = @tasks.order(:complete_date, :name)
	end

	def find_task
		@task = Task.find(params[:id])
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

	def create
		Task.create(task_params[:task])
		redirect_to "/"
	end

	def edit 
		before_action :find_task
	end

	def update
		before_action :find_task

		@task.update(task_params[:task])

		redirect_to "/"
	end

	def complete
		before_action :find_task

		@task.complete_date = Time.now
		@task.save

		redirect_to "/"
	end

	def incomplete
		before_action :find_task
		@task.complete_date = nil
		@task.save

		redirect_to "/"
	end

	private

	def task_params
		params.permit(task:[:name, :description, :complete_date, :person_id])
	end
end
