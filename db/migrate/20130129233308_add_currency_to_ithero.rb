class AddCurrencyToIthero < ActiveRecord::Migration
  def change
    add_column :itheros, :currency, :string
  end
end
