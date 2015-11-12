Rails.application.routes.draw do
	root 'tasks#index'
	get '/tasks/new' => 'tasks#new'
	post '/tasks' => 'tasks#create'

	get '/tasks/:id' => 'tasks#show', as: :task
	delete '/tasks/:id' => 'tasks#delete'

	# Edit
	# get '/update/:id' => 'tasks#edit'

	# Testing out my 404s, lowest priority
	# get '/:anything' => 'tasks/missing'
	# get '/:anything/:anything' => 'tasks/missing'
end
