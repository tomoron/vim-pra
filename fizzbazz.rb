def fizzbazz(num)
  num.times do |n|
    if (n+1) % 3 == 0 && (n+1) % 5 == 0
      puts 'FizzBazz'
    elsif (n+1) % 3 == 0
      puts 'Fizz'
    elsif (n+1) % 5 == 0
      puts 'Bazz'
    else
      puts (n+1)
    end
  end
end
