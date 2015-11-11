class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name
      t.string :code
      t.boolean :serial

      t.timestamps null: false
    end
  end
end
