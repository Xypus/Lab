Rails.application.routes.draw do
  resources :protocols, :cultures, :mice
  resources :stainings do
    get :download, on: :member
  end

  root 'mice#index'
end

