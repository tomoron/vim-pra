class Order
  def initialize(distance,urgent,weight)
    @distance = distance
    @urgent = urgent
    @weight = weight
  end

  def say
    puts @distance
    puts @urgent
  end
end

class Transporter
  def transport(order)
    order
  end

  def issuitablewithorder(order)
    order
  end

  def self.gettransporter(order)
    instance = getsuitableinstance(self.class,order)
    return instance
  end

  def getsuitableinstance(instance,order) 
    
  end
end

class SeawayTransporter < Transporter
  def transport(order)
    puts 'The order transported by SeaywayTransporter'
  end

  def issuitablewithorder(order)
    return !order.urgent && (order.distance >= 1000 && order.weight > 100)
  end
end

class AirwayTransporter < Transporter
  def transport(order)
    puts 'The order transported by AirwayTransporter'
  end
  
  def issuitablewithorder(order)
    return order.urgent || (order.distance >= 1000 && order.weight <= 100)
  end
end

class HighwayTransporter < Transporter
  def transport(order)
    puts 'the order transported by HightwayTransporter'
  end

  def istuitablewithorder(order)
    return !order.urgent && order.distance < 1000
  end
end

order = Order.new(distance=199, urgent=false)
tran = HighwayTransporter.new.transport(order)

