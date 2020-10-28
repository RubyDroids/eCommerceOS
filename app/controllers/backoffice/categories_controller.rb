# app/controllers/backoffice/categories_controller.rb
class Backoffice::CategoriesController < BackofficeController
  #include CableReady::Broadcaster
  include ModelName

  def index
    #@resources = Category.includes(:items).all.order(created_at: :desc)
    @resources = Category.all.order(created_at: :desc)
    @resource  = Category.new
  end

  def create
    # category = Category.create(resource_params)
    # cable_ready["stream_categories"].insert_adjacent_html(
    #   selector: "#stream_categories",
    #   position: "afterbegin",
    #   html: render_to_string(
    #     partial: "backoffice/categories/resource",
    #     locals: { resource: category }
    #   )
    # )
    # cable_ready.broadcast
  end

  private

  def resource_params
    accessible = []
    accessible << %i[name slug parent parent_id featured]
    params.require(:category).permit(accessible)
  end
end
