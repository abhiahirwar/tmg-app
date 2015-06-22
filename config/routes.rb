Rails.application.routes.draw do
  resources :student_ids

  resources :images

  resources :tests do
    get 'answers', on: :member
  end

  resources :enrolments do
    resources :student_ids
    resources :students
    resources :vic_students
    get   'lln-test'  =>  'static_pages#lln_test'
    get   'review'  =>  'static_pages#review'
    get   'course-review' => 'static_pages#course_review'
  end

  resources :vic_students

  resources :employments

  resources :schools

  resources :language_culture_diversities

  resources :emergency_contacts

  resources :employers

  resources :addresses

  resources :students

  resources :course_categories

  # resources :courses

  resources :pre_training_reviews


  # devise_for :users
  root  'static_pages#home'
  get   'help' => 'static_pages#help'
  get		'pre-enrolment' => 'static_pages#pre-enrolment'
  get   'lln-test'  =>  'static_pages#lln_test'
  get   'ids'   =>  'static_pages#ids'
  get   'review'  =>  'static_pages#review'
  get   'success' => 'static_pages#success'
  get   'course-review' => 'static_pages#course_review'
  get   :send_enrolment_mail, to: 'enrolments#send_enrolment_mail', as: :send_enrolment_mail
  devise_for :users,:path => '', path_names: {sign_in: "login", sign_out: "logout"}, controllers: { registrations: "registrations" }
  
  namespace :admin do
	  resources :forms
	  resources :questions
	  resources :answers
    resources :users
    resources :courses
    resources :course_categories
	end
end
