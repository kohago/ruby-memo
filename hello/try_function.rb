def print_it(args,func)
  puts func.call(args)
end

#function with no name
print_it(4, ->n{n*n})


def multi_it(num1,num2)
  puts num1 ** num2
end

#change function to method object
multi_it_method = method(:multi_it)
multi_it_method.call(4,5)
