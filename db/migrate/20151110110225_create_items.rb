class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :serial
      t.string :comment
      t.references :position, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
