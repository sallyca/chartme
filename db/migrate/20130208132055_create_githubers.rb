class CreateGithubers < ActiveRecord::Migration
  def change
    create_table :githubers do |t|
      t.string :name
      t.string :username
      t.string :link
      t.integer :followers
      t.integer :reps
      t.string :language
      t.string :location
      t.string :contributions
      t.string :interest

      t.timestamps
    end
  end
end
