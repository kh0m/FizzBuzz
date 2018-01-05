Rails.application.routes.draw do
  get 'main/index'

  get 'main/fizz_buzz' => 'main#fizz_buzz'

  root 'main#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
