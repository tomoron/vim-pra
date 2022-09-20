require 'singleton'

class Single
  include Singleton
  attr_accessor :counter
  
  def initialize
    @counter = 0
  end
end

puts '----------------'
obj1 = Single.instance
puts "obj1:counter #{obj1.counter}"
obj1.counter += 1
puts "obj1:counter #{obj1.counter}"

obj2 = Single.instance
puts "obj2:counter #{obj2.counter}"
obj2.counter += 2
puts "obj2:counter #{obj2.counter}"
puts "----------------"


