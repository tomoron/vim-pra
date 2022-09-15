def fina(num)
  result = []
  num.times do |n|
    if n == 1 || n == 0
      result[n] = 1
      next
    end
    result[n]= result[n -2] + result[n -1] 
  end
  p result
end

fina(10)


