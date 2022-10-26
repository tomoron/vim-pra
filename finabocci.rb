
NUM = gets.to_i
def fina(num)
  result = []
  num.times do |n|
    if n == 1 || n == 0
      result[n] = 1
      next
    end
    result[n]= result[n -2] + result[n -1] 
  end
  result
end

puts "-----出力------"
puts fina(NUM)
