Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :controller => "welcome", :action => :index
  resources :about, :only => %w(index) do
    collection do
      get 'history'
    end
  end
  get :calendar, :to => 'calendar#index', :as => 'calendar_index'

  get :research, :to => 'research#index', :as => 'research_index'

  resources :activities, :only => %w(index show)

  get :people, :to => 'people#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
