class Movement < ActiveRecord::Base
  belongs_to :document
  belongs_to :position
  belongs_to :item
  def document_short
  	Document.find(document_id).short
  end
  def position_name
  	Position.find(position_id).name
  end
  def item_serial
  	Item.find(item_id).serial if is_serial?
  end
  def amount_non_serial
  	return "" if is_serial?
  	amount
  end
  def is_serial?
  	Position.find(position_id).serial
  end
end
