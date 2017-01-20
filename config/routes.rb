Rails.application.routes.draw do
  get 'results/new'

  get 'results/create'

  get 'results/update'

  get 'results/edit'

  get 'results/destroy'

  get 'results/index'

  get 'results/show'

  get 'elections/new'

  get 'elections/create'

  get 'elections/update'

  get 'elections/edit'

  get 'elections/destroy'

  get 'elections/index'

  get 'elections/show'

  get 'categories/new'

  get 'categories/create'

  get 'categories/update'

  get 'categories/edit'

  get 'categories/destroy'

  get 'categories/index'

  get 'categories/show'

  get 'reports/new'

  get 'reports/create'

  get 'reports/update'

  get 'reports/edit'

  get 'reports/destroy'

  get 'reports/index'

  get 'reports/show'

  get 'about/index'

  get 'about' => 'about#index'

  root 'reports#index'

  resources :reports
  resources :categories
  resources :elections
  resources :results

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
