Rails.application.routes.draw do

  root 'questions#index'
  devise_for :users

  resources :questions do 

  	resource  :vote_question, only:[:create, :destroy]
  	resources :commentary_questions, only:[:create]

  	resources :answers, only:[:create]
  	resource  :vote_answer, only:[:create, :destroy]
  	resources :commentary_answers, only:[:create]
  	
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
