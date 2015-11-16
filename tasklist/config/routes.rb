Rails.application.routes.draw do
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

	# People routes
	get 'people' => 'people#index'
	get 'people/:id' => 'people#show'
  get 'people/:id/tasks' => 'people#tasks'
end
