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
	get 'tasks/complete/:id' => 'tasks#complete'
	patch 'tasks/complete/:id' => 'tasks#complete'

	# Update to incomplete
	get 'tasks/incomplete/:id' => 'tasks#incomplete'
	patch 'tasks/incomplete/:id' => 'tasks#incomplete'
end
