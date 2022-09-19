require 'benchmark'

n = 40000

def hello
  puts 'Hello World'
end

Benchmark.bm do |x|
  x.report do 
    n.times do
      hello
    end
  end
end
