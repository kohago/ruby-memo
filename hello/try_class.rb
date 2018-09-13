#Class: is the blueprint from which individual objects are created. 
#Classes in Ruby are first-class objects---each is an instance of class Class.
#Module: is a collection of methods and constants. 
#You can't make an instance of a module; the way you access the constants and methods inside it depends on it's definition; 
#module methods and variables can be accessed like this Module.method or Module.CONSTANT .
#if you want to access an instance method you should include the module to another class to use it.


class Goo
    def initialize
        @hoge = 1
    end
end

def opt_instance_variables
    f = Goo.new
    puts f
    puts f.instance_variables
    puts f.instance_variable_get(:@hoge)

    puts f.instance_variable_set(:@hoge,2)
    puts f.instance_variable_get(:@hoge)
end

opt_instance_variables