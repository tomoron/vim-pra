require './order'

orders = [{urgent :false,distance:100,weight:50},{urgent:false,distance:2000,weight:4000},{urgent:false,distance:1100,weight:5},{urgent:true,distance:1200,weight:250}]

orders.map do |order|
  puts '--------------'
  puts "Distance: ${order.distance}, Weight: ${order.weight}, Urgent: ${order.urgent}"
  puts Transporter.GetTransporter(order).transport()
end
