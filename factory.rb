class Saxophone
  def initialize(name)
    @name = name
  end
  
  def play
    puts "サックス #{@name}は音を奏でています。"
  end
end

class Trumpet
  def initialize(name)
    @name = name
  end

  def play
    puts "トランペット#{@name}は音を奏でています。"
  end
end

class InstrumentFactory
  def initialize(number_saxophones)
    @instruments = []
    number_saxophones.times do |n|
      instrument = new_instrument("楽器 #{n}")
      @instruments << instrument
    end
  end

  def ship_out
    @tmp = @instruments.dup
    @instruments = []
    @tmp
  end
end

class SaxophoneFactory < InstrumentFactory
  def new_instrument(name)
    Saxophone.new(name)
  end
end

class TrumpetFactory < InstrumentFactory
  def new_instrument(name)
    Trumpet.new(name)
  end
end


saxfactory = SaxophoneFactory.new(3)
saxophones = saxfactory.ship_out
saxophones.each {|s| s.play}

trufactory = TrumpetFactory.new(2)
trumpets = trufactory.ship_out
trumpets.each {|t| t.play }

