class Movement < ActiveRecord::Base
  belongs_to :document
  belongs_to :position
  belongs_to :item
end
