class PeopleController < ApplicationController
	def index
		@people = Person.all.order(:name)
	end

	def find_person
		@person = Person.find(params[:id])
	end

	def show
		find_person
	end

	def new
		@person = Person.new
	end

	def delete
		@person = Person.destroy(params[:id])
		redirect_to "/people"
	end

	def create
		Person.create(person_params[:person])
		redirect_to "/people"
	end

	def edit
		find_person
	end

	def update
		find_person

		@person.update(person_params[:person])
		redirect_to "/people"
	end

	def tasks
		find_person
	end

	private

	def person_params
		params.permit(person:[:name, :bio])
	end
end
