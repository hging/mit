Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :controller => "welcome", :action => :index
  resources :about, :only => %w(index) do
    collection do
      get 'history'
      get 'directions'
      get 'magazine'
    end
  end
  get :calendar, :to => 'calendar#index', :as => 'calendar_index'

  resources :research, :only => %w(index) do
    collection do
      get 'communications'
      get 'control'
      get 'inference'
    end
  end

  resources :activities, :only => %w(index show)

  get :people, :to => 'people#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
