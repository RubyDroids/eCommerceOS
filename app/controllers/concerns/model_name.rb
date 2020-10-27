module ModelName
  extend ActiveSupport::Concern

  included do
    before_action :model_class, only: [:index, :show, :new, :edit]
  end

  private
    def model_class
      @model_class = controller_path.classify.delete_prefix("Backoffice::").constantize
    end
end