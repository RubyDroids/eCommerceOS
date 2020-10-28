# app/controllers/backoffice/items_controller.rb
class Backoffice::ItemsController < BackofficeController
  include CrudController
  include ModelName

  def index
    @resource ||= Item.new
  end

  def edit
  end  
  
  private

  def resource_params
    accessible = []
    accessible << [:title, :description, :slug, :active, :category, :featured]
    #accessible << [variant_attributes: [:quantity, :wholesale_enabled, :wholesale_quantity]]
    params.require(:item).permit(accessible)
  end
end
