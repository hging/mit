RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  config.authenticate_with do
    authenticate_or_request_with_http_basic('Login required') do |email, password|
      user = Staff.where(email: email).first
      user.authenticate(password) if user
    end
  end

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true
  config.model Activity do
    edit do
      # For RailsAdmin >= 0.5.0
      field :title
      field :author
      field :content, :ck_editor
      field :published
      field :start, :timestamp
      field :end, :timestamp
      field :activity_type
      field :news_type

      # For RailsAdmin < 0.5.0
      # field :description do
      #   ckeditor true
      # end
    end
  end

  config.model Person do
    field :name
    field :avatar
    field :email
    field :title
  end

  config.model Staff do
    field :email
    field :password
    field :password_confirmation
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
