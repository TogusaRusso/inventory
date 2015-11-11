class CreateMovements < ActiveRecord::Migration
  def change
    create_table :movements do |t|
      t.references :document, index: true, foreign_key: true
      t.references :position, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true
      t.float :amount

      t.timestamps null: false
    end
  end
end
