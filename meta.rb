class Meta
  def self.my_method(name)
    singleton_class.send(:define_method, name, -> {puts "#{name}"})
  end

  my_method :test_a
end

Meta.test_a

Meta.my_method(:test_b)
Meta.test_b
