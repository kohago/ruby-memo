TEST_OBJ = Object.new
STR1 = "aa"
STR2 = "aa"

def show_obj(str)
  p __method__
  p "methods:" + str.methods.to_s
  p "public methods:" + str.public_methods.to_s
  p "private methods:" + str.private_methods.to_s

  p "__id__:" + str.__id__.to_s
  p "hast:" + str.hash.to_s
  p "object_id:" + str.object_id.to_s
  p "freeze:" + str.freeze? # cann't be changed!!
  p "tainted:" + str.tainted? #
  p
end

show_obj(TEST_OBJ)

# what is hash ? what is object_id?
# -> When objects‘ values are equal, their hashes are to be equal for quick lookup/search etc.
# .equal() => object_id  .eql hash
def test_hash_id(str1,str2)
  p __method__
  p "--id--:"
  p str1.object_id
  p str2.object_id

  p "--hash--:"
  p str1.hash
  p str2.hash

  p "--equal?--"
  p str1.equal?(str2)

  p "--eql?--"
  p str1.eql?(str2)
  p
  p
end

test_hash_id(STR1,STR2)

def test_clone_dup()
  p __method__
  str1 = "aa"
  str2 = str1.clone()
  test_hash_id(str1,str2)

  str3 = str1.dup()
  test_hash_id(str1,str2)
  p
  p
end

test_clone_dup()
