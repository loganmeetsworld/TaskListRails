Rails.application.routes.draw do
	root 'tasks#index'
	get 'tasks/new' => 'tasks#new' # Method and the data
	post 'tasks' => 'tasks#create' # Just the action

	get 'tasks/:id' => 'tasks#show', as: :task
	delete 'tasks/:id' => 'tasks#delete'

	# Edit
	get 'tasks/update/:id' => 'tasks#edit'
	post 'tasks/:id/edit' => 'tasks#update'
	patch 'tasks/:id' => 'tasks#update'

	# Update to complete
	get 'tasks/complete/:id' => 'tasks#complete'
	patch 'tasks/complete/:id' => 'tasks#complete'

	# Update to incomplete
	get 'tasks/incomplete/:id' => 'tasks#incomplete'
	patch 'tasks/incomplete/:id' => 'tasks#incomplete'
end
