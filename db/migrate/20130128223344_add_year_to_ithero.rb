class AddYearToIthero < ActiveRecord::Migration
  def change
    add_column :itheros, :year, :integer
  end
end
