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
    parent '/'
    edit do
      # For RailsAdmin >= 0.5.0
      field :title
      field :activity_type
      field :news_type
      field :author
      field :content, :ck_editor
      field :published
      field :start, :timestamp
      field :end, :timestamp
      field :logo do
        label 'Avatar'
        help '会缩放为110*110的图片'
      end

      # For RailsAdmin < 0.5.0
      # field :description do
      #   ckeditor true
      # end
    end
  end
  config.model Hardware do
    parent '/'
    navigation_label 'Resource'
    edit do
      # For RailsAdmin >= 0.5.0
      field :title
      field :activity_type
      field :news_type
      field :author
      field :content, :ck_editor
      field :published
      field :start, :timestamp
      field :end, :timestamp
      field :logo do
        label 'Avatar'
        help '会缩放为110*110的图片'
      end

      # For RailsAdmin < 0.5.0
      # field :description do
      #   ckeditor true
      # end
    end
  end
  config.model Software do
    parent '/'
    navigation_label 'Resource'
    edit do
      # For RailsAdmin >= 0.5.0
      field :title
      field :activity_type
      field :news_type
      field :author
      field :content, :ck_editor
      field :published
      field :start, :timestamp
      field :end, :timestamp
      field :logo do
        label 'Avatar'
        help '会缩放为110*110的图片'
      end

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
    field :link
    field :title
    field :person_type
    field :professional
    field :research_area, :text
    field :faculty
    field :group, :ck_editor
    field :teaching, :ck_editor
    field :publication, :ck_editor
    field :research, :ck_editor
  end

  config.model Staff do
    field :email
    field :password
    field :password_confirmation
  end
  config.model About do
    field :content, :ck_editor
  end

  config.model Home do
    field :background do
      help '建议尺寸：1200*440'
    end
    field :link do
      help '例子：http://baidu.com 或者 https://baidu.com'
    end
  end

  config.model Menu do
    field :title
    field :body, :ck_editor
    field :zindex do
      help '菜单排序，数字越大，越靠前'
    end
  end

  config.model SubMenu do
    field :menu
    field :title
    field :body, :ck_editor
  end

  config.model 'Ckeditor::Asset' do
    visible false
  end

  config.model 'Ckeditor::AttachmentFile' do
    visible false
  end

  config.model 'Ckeditor::Picture' do
    visible false
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new do
      except [About]
    end
    export do
      except [About]
    end
    bulk_delete do
      except [About]
    end
    show do
      except [About]
    end
    edit
    delete do
      except [About]
    end
    show_in_app do
      except [About]
    end

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
