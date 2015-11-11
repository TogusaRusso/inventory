module DynamicSelectable
  class ItemsController < SelectController
    def index
      items = Item.where(position_id: params[:position_id]).select('id, name').order('serial asc')
      render json: items
    end
  end
end
