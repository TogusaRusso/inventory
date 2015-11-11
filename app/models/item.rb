class Item < ActiveRecord::Base
  belongs_to :position
  
  def position_name
  	Position.find(self.position_id).name
  end
end
