require 'zlib'
require 'stringio'
require 'csv'

text = CSV.generate do |csv|
  csv << ["id","name","text"]
  [["1","test1","a"],["2","test2","b"],["3","test3","c"]].each do |row|
    csv << row
  end
end


io = StringIO.new
gzip = Zlib::GzipWriter.new(io)
gzip.write(text)
gzip.close
gzipped_text = io.string





p text
p "---------"
p gzipped_text
p "---------"

