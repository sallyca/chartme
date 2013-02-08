class CreateGithubers < ActiveRecord::Migration
  def change
    create_table :githubers do |t|
      t.string :contributions
      t.integer :followers
      t.string :interests
      t.string :language
      t.string :link
      t.string :location
      t.string :name
      t.integer :reps
      t.string :username
      t.string :country

      t.timestamps
    end
  end
end
