class CreateItheros < ActiveRecord::Migration
  def change
    create_table :itheros do |t|
      t.string :speciality
      t.string :language
      t.string :spec_more
      t.string :tenure
      t.string :tenure_current
      t.integer :netwage
      t.integer :wage_diff
      t.string :city
      t.string :company_size
      t.string :gender
      t.integer :age
      t.string :education
      t.string :english
      t.string :date
      t.string :user_agent

      t.timestamps
    end
  end
end
