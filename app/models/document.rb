class Document < ActiveRecord::Base
  belongs_to :person
  def from_name
  	name_by_id self.person_from
  end
  def to_name 
  	name_by_id self.person_to
  end
  def short
  	[created_at, from_name, to_name].join(' ')
  end
  private
  def name_by_id id
  	id == 0 ? "Нет" : Person.find(id).name
  end
end
