test_arr = (1..10).to_a.map { |e| e.to_s }
test_hash = {"name" => "Jim","age" => "12"}

test_arr2 = []
[1..10].each { |n| test_arr2 << n  }

test_arr3 = []
[*1..10].each { |n| test_arr3 << n  }

def test_p(obj)
  puts "begin ----"
  puts "- test p "
  p obj

  puts "- test print"
  print obj

  puts "- test puts"
  puts obj

  puts "- test puts_to_s"
  puts obj.to_s

  puts "---- finished!"
end

test_p(test_arr)
test_p(test_hash)
test_p(test_arr2)
test_p(test_arr3)
