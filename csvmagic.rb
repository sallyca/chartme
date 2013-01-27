require 'csv'    

csv_text = File.read('...')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  row = row.to_hash.with_indifferent_access
  Moulding.create!(row.to_hash.symbolize_keys)
end