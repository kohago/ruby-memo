def test_Q()
# %Q %() == "" ,merit is not need to escape "
  var1 = %(this is a test of "ruby percent")
  var2 = %(this is a test of "#{var1}")

  puts var1
  puts var2

  var3 = %Q(Q !this is a test of "ruby percent")
  var4 = %Q(Q !this is a test of "#{var1}")

  puts var3
  puts var4
end

#test_Q

def test_q()
# %q == '' ,merit is not need to escape "
  var1 = %q(this is a test of "ruby percent")
  var2 = %q(this is a test of "#{var1}")

  puts var1
  puts var2
end

#test_q

#use %w to create array
def test_w
  w_far = %w(aa bb cc)
  p w_far
  puts w_far.class
end

#test_w

PYTHON = 'PYTHON'
# W likes Q will extend the variables
def test_W
  ruby = 'ruby'
  #dynamic constant assignment
  # can not defin constant in function
  #PYTHON = 'PYTHON'

  array_W = %W(#{ruby} #{PYTHON} PHP)
  p array_W
end

#test_W

#%i create symbols' array
def test_i
  i_arr = %i(aa bb cc)
  p i_arr
end

#test_i


#%x  run command
def test_x
  cmd = %x(date)
  puts cmd

  puts `date`
end

#test_x

#%s defind symbol
def test_s
  t_symbol = %s(ruby)
  p t_symbol
end

test_s
