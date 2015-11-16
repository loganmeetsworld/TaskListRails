class PeopleController < ApplicationController
	def index
		@people = Person.all
		@people = @people.order(:name)
	end

	def find_person
		@person = Person.find(params[:id])
	end

	def show
		find_person
	end

	def tasks
		find_person
	end

	private

	def people_params
		params.permit(person:[:name, :bio])
	end
end
