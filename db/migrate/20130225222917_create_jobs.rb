class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :category
      t.string :company
      t.integer :responses
      t.datetime :date
      t.boolean :is_active

      t.timestamps
    end
  end
end
