ComeWithMe::Application.routes.draw do

root :to => 'welcome#index'

  devise_for :travelers

  # resources :travelers do
  resources :trips do
    resources :comments
  end
  # end

  resources :travelers 
  #   # resources :trips 
  # end
  



end
