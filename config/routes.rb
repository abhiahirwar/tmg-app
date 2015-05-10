Rails.application.routes.draw do
  # devise_for :users
  root  'static_pages#home'
  get   'help' => 'static_pages#help'
  get		'pre-enrolment' => 'static_pages#pre-enrolment'
  devise_for :users,:path => '', path_names: {sign_in: "login", sign_out: "logout"}, controllers: { registrations: "registrations" }
  
end
