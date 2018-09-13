#hash is dinamic!! 
person = {name: "jim",age:16}
person[:tel] = "0909999999"
puts person

person1 = {name: "jim",age:16}
person1[:tel] = "0909999999"

# == will compire key-value!
puts person == person1

print person.to_a