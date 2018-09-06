Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :controller => "welcome", :action => :index
  resources :about, :only => %w(index) do
    collection do
      get 'history'
      get 'nice_research'
      get 'nice_news'
    end
  end

  resources :research, :only => %w(index) do
    collection do
      get 'highlight_result'
      get 'archive_result'
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

  # resources :activities, :only => %w(index show)
  resources :events, :only => %w(index show) do
    collection do
      get 'calendar'
      get 'nice_seminar_series'
      get 'workshops'
      get 'news'
    end
  end

  # get :people, :to => 'people#index'
  resources :people, :only => %w(index)

  resources :labs, :only => %w(index) do
    collection do
      get :dial
      get :data
    end
  end

  resources :resource, :only => %w(index) do
    collection do
      get :software
      get :hardware
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
