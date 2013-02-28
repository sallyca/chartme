class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :category
      t.string :company
      t.integer :responses
      t.datetime :date
      t.boolean :is_active

      t.timestamps
    end
  end
end
