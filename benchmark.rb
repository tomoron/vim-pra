require 'benchmark'
require './finabocci'

n = 40

output do
  Benchmark.bm do |x|
    x.report do
      fina(n)
    end
  end
end
