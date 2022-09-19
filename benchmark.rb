require 'benchmark'
require './finabocci'
require './fizzbazz'
require './input'

n = 40

def hello
  puts 'Hello World'
end


output do
  Benchmark.bm do |x|
    x.report do 
      fina(n)
    end
  end
end
