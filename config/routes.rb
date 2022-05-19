Rails.application.routes.draw do
 


  resources :courses do
    get "long_courses", on: :collection 
    resources :students
  end

  resources :students do 
    resources :comments
  end

  root 'courses#index'
  


  
  
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


