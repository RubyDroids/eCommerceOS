module FrontendController
  extend ActiveSupport::Concern

  included do
    before_action :set_resource_class
    before_action :set_index, only: :index
    before_action :set_show, only: [:show, :edit, :update, :destroy]
  end

  def index; end

  def show; end

  private

  def resource_class
    controller_path.classify.constantize
  end

  def set_index
    # params[:order] = :created_at, :updated_at
    # params[:sort] = :asc, :desc
    order = params[:order].present? ? params[:order].to_s : "updated_at"
    sort  = params[:sort].present? ? params[:sort].to_s : "desc"

    @resources = @resource_class.all
    #@resources = @resource_class.all.page(params[:page])
    #@resources = @resources.unscope(:order).order("#{order} #{sort}") if params[:order].present?
  end

  def set_show
    @resource = resource_class.find(params[:id])
  end

  def set_resource_class
    @resource_class = resource_class
  end
end