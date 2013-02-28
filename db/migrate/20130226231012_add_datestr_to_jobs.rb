class AddDatestrToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :datestr, :string
  end
end
