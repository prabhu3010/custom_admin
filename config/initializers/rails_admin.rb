# RailsAdmin config file. Generated on October 16, 2013 11:25
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|

 config.model Document do
    list do
      field :name
      field :document_type, :enum
    end
    show do
      field :user
      field :name
      field :document_type, :enum
    end
    edit do
      field :user
      field :name
      field :document_type, :enum
    end
    create do
      field :user
      field :name
      field :document_type, :enum
    end
    update do
      field :user
      field :name
      field :document_type, :enum
    end
  end

  config.model DocDetails do
    list do
      field :document
      field :validity_date
      field :doc_code
      #  field :doc_code do
      #   formatted_value do
      #     if bindings[:object].document.name.to_s == "asdf"
      #       bindings[:view].tag(:span, { :text => bindings[:object].document.name }) << value
      #     end
      #   end
      # end
      field :raw_data
    end
    show do
      field :document
      field :validity_date
      field :doc_code
      field :raw_data
    end
    edit do
      field :document
      field :validity_date
      # field :doc_code
      field :doc_code do
        partial "doc_partial"
      end
      field :raw_data
    end
    create do
      field :document
      field :validity_date
      # field :doc_code
      field :doc_code do
        partial "doc_partial"
      end
      # field :doc_code
      field :raw_data
    end
    update do
      field :document
      field :validity_date
      # field :doc_code
      field :doc_code do
        partial "doc_partial"
      end

      # configure :doc_code do
      #   partial "user_state_partial"
      # end
      field :raw_data
    end
  end
  ################  Global configuration  ################

  # Set the admin name here (optional second array element will appear in red). For example:
  config.main_app_name = ['Custom Admin', 'Admin']
  # or for a more dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }

  # RailsAdmin may need a way to know who the current user is]
  config.current_user_method { current_user } # auto-generated

  # If you want to track changes on your models:
  # config.audit_with :history, 'User'

  # Or with a PaperTrail: (you need to install it first)
  # config.audit_with :paper_trail, 'User'

  # Display empty fields in show views:
  # config.compact_show_view = false

  # Number of default rows per-page:
  # config.default_items_per_page = 20

  # Exclude specific models (keep the others):
  # config.excluded_models = []

  # Include specific models (exclude the others):
  # config.included_models = []

  # Label methods for model instances:
  # config.label_methods << :description # Default is [:name, :title]


  ################  Model configuration  ################

  # Each model configuration can alternatively:
  #   - stay here in a `config.model 'ModelName' do ... end` block
  #   - go in the model definition file in a `rails_admin do ... end` block

  # This is your choice to make:
  #   - This initializer is loaded once at startup (modifications will show up when restarting the application) but all RailsAdmin configuration would stay in one place.
  #   - Models are reloaded at each request in development mode (when modified), which may smooth your RailsAdmin development workflow.


  # Now you probably need to tour the wiki a bit: https://github.com/sferik/rails_admin/wiki
  # Anyway, here is how RailsAdmin saw your application's models when you ran the initializer:


end
