class PeopleController < ApplicationController
	def index
		@people = Person.all
		@people = @people.order(:name)
	end

	def show
		@person = Person.find(params[:id])
	end

	def tasks
		show
	end

	private

	def task_params
		params.permit(person:[:name, :bio])
	end
end
