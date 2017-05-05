Rails.application.routes.draw do
  get 'teacherlogin/index'

  get 'studentlogin/index'

  get 'welcome/index'

  resources :student_dos
  resources :todos

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
