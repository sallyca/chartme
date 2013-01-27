class AddNothingToItheros < ActiveRecord::Migration
  def change
    add_column :itheros, :nothing, :string
  end
end
