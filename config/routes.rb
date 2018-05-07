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
      get 'fog'
      get 'cloud'
      get 'distributed'
      get 'communication'
      get 'network_design'
      get 'big_data'
      get 'network_information'
      get 'network_optimzation'
    end
  end

  resources :activities, :only => %w(index show)

  # get :people, :to => 'people#index'
  namespace :people do
    get :engineers
    get :faculty_pls
    get :students
  end

  namespace :labs do
    get :dial
    get :data
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
