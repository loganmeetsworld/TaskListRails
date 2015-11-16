Rails.application.routes.draw do
	#### TASK ROUTES ####

	# Home page
	root 'tasks#index'

	# Add a task
	get 'tasks/new' => 'tasks#new' # Method and the data
	post 'tasks' => 'tasks#create' # Just the action

	# Show individual page
	get 'tasks/:id' => 'tasks#show', as: :task

	# Delete
	delete 'tasks/:id' => 'tasks#delete'

	# Edit
	get 'tasks/:id/edit' => 'tasks#edit'
	patch 'tasks/:id' => 'tasks#update'

	# Update to complete
	patch 'tasks/complete/:id' => 'tasks#complete'

	# Update to incomplete
	patch 'tasks/incomplete/:id' => 'tasks#incomplete'

	#### PEOPLE ROUTES ####

	# Home page
	get 'people' => 'people#index'

	# Add a person
	get 'people/new' => 'people#new'
	post 'people' => 'people#create'

	#Show indvidual person page
	get 'people/:id' => 'people#show', as: :person

	# Show individual tasks page
  get 'people/:id/tasks' => 'people#tasks'

  # Delete
	delete 'people/:id' => 'people#delete'

	# Edit
	get 'people/:id/edit' => 'people#edit'
	patch 'people/:id' => 'people#update'
end
