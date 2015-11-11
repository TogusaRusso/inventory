class RenameAddColumnToDocuments < ActiveRecord::Migration
  def change
  	rename_column :documents, :person_id, :person_from
  	add_reference :documents, :person, index: true
  	add_column :documents, :checked, :boolean
  end
end
