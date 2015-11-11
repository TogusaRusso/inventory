class RenamePersonTo < ActiveRecord::Migration
  def change
  	rename_column :documents, :person_id, :person_to
  end
end
