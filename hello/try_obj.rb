## string will can not be changed
# frozen_string_literal: true

# upcase
TEST_OBJ = Object.new
STR1 = "aa"
STR2 = "aa"

def show_obj(str)
  #output mothod name
  puts __method__

  ## too many method,comment them
  #puts "methods:" + str.methods.to_s
  #puts "public methods:" + str.public_methods.to_s
  #puts "private methods:" + str.private_methods.to_s

  puts "__id__:" + str.__id__.to_s
  puts "hast:" + str.hash.to_s
  puts "object_id:" + str.object_id.to_s
  puts "freeze:" + str.frozen?.to_s # cann't be changed!!
  puts "tainted:" + str.tainted?.to_s #
  p
end

#show_obj(TEST_OBJ)

# what is hash ? what is object_id?
# -> When objects‘ values are equal, their hashes are to be equal for quick lookup/search etc.
# .equal() => object_id  .eql hash
  puts __method__
  puts "--id--:"
  puts str1.object_id
  puts str2.object_id

  puts "--hash--:"
  puts str1.hash
  puts str2.hash

  puts "--equal?--"
  puts str1.equal?(str2)

  puts "--eql?--"
  puts str1.eql?(str2)
  p
  p
end

#test_hash_id(STR1,STR2)

def test_clone_dup
  puts __method__
  str1 = "aa"
  str1.taint
  str1.freeze
  str1.untrust
  str2 = str1.clone()
  show_obj(str2)

  # dup will not copy freeze/taint/trust
  str3 = str1.dup()
  show_obj(str3)
  p
  p
end

test_clone_dup
