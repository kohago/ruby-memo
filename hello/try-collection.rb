
t_range = (1..10)
t_array = [*1..10]

puts t_range
puts t_array

p "object method:" + Object.new.methods.to_s
p "range method:" + t_range.methods.to_s
p "array method:" + t_array.methods.to_s
