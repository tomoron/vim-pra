require 'csv'

csv_string = CSV.generate do |csv|
  csv << ["id","name","text"]
  [["1","t1","a"],["2","t2","b"],["3","t3","c"],["4","t4","d"]].each do |row|
    csv << row
  end
end

File.write("test.csv", csv_string)
