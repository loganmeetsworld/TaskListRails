class TasksController < ApplicationController
	def index
		@tasks = Task.all
		@tasks = @tasks.order(:complete_date, :name)
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
		show
	end

	def update
		show

		@task.update(
			name: params[:task][:name],
			description: params[:task][:description],
			complete_date: params[:task][:complete_date])

		redirect_to "/"
	end

	def complete
		show

		@task.complete_date = Time.now
		@task.save

		redirect_to "/"
	end

	def incomplete
		show
		@task.complete_date = nil
		@task.save

		redirect_to "/"
	end

	private

	def task_params
		params.permit(task:[:name, :description])
	end
end
