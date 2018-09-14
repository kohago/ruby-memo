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

#opt_instance_variables

class TestSuper
    protected 
    def protected_method
        puts "I am protected!"
    end

    def call_super(str1,str2)
        puts "I am function with parameters  in super class"
    end

    #Ruby doesn't really support overloading!!!!
    #def call_super
    #    puts "I am function withouts parameter "
    #end

    def anti_implicit_parameters
        puts "I am a method without parameters"
    end

    private 
    def private_method
        puts "I am private"
    end
end

module TestModule
    def call_super(str1,str2)
        puts "I am function with parameters  in module"
    end
end

# protectd : can access from childs
# < is inherit
class TestChild < TestSuper

    include TestModule

    def call_protected
        t = TestChild.new
        t.protected_method
        begin
            t.private_method
        rescue => exception
            puts exception.message
        end 
    end

    def call_super(str1,str2)
        #super() =>will cause ArgumentError
        super
    end

    def anti_implicit_parameters(str1, str2)
        #super # =>will cause ArgumentError
        super()
    end
end

# Module is behind super class
# Object > Kernel > BasicObject
#puts TestChild.ancestors

# TestChild.new.call_protected
# super -> implicit parameters
testChild = TestChild.new
#testChild.call_super("1","2")

testChild.anti_implicit_parameters("1","2")