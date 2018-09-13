
t_range = (1..10)
t_array = [*1..10]

puts t_range
puts t_array

puts "object method:" + Object.new.methods.to_s
puts "range method:" + t_range.methods.to_s
puts "array method:" + t_array.methods.to_s
