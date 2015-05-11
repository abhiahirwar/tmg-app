Rails.application.routes.draw do
  resources :enrolments

  resources :vic_students

  resources :employments

  resources :schools

  resources :language_culture_diversities

  resources :emergency_contacts

  resources :employers

  resources :addresses

  resources :students

  resources :course_categories

  resources :courses

  resources :pre_training_reviews

  namespace :admin do
  get 'questions/index'
  end

  namespace :admin do
  get 'questions/show'
  end

  namespace :admin do
  get 'questions/new'
  end

  namespace :admin do
  get 'questions/create'
  end

  namespace :admin do
  get 'questions/update'
  end

  namespace :admin do
  get 'questions/destroy'
  end

  # devise_for :users
  root  'static_pages#home'
  get   'help' => 'static_pages#help'
  get		'pre-enrolment' => 'static_pages#pre-enrolment'
  devise_for :users,:path => '', path_names: {sign_in: "login", sign_out: "logout"}, controllers: { registrations: "registrations" }
  
  namespace :admin do
	  resources :forms
	  resources :questions
	  resources :answers
	end
end
