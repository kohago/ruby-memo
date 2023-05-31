#Error is a subclass of Exception
#RuntimeError is a subclass of StandardError

class Hello
    # there is no ()
    def say
        puts "hi, I am Hello class!"
    end

    def cause_error
        begin
            1/0
        rescue ZeroDivisionError => exception
            puts exception.class, exception.message
        end
    end

    def do_raise
        begin
            1/0
        rescue ZeroDivisionError => exception
            puts exception.class
            raise
        ensure
            puts "ensure something"
        end
    end
end

hello = Hello.new
# there is no ()
hello.say
hello.cause_error

# when call func return exception,
# have to around begin-rescue->end 
begin
    hello.do_raise
rescue =>e
    puts e.message 
end

#hello.cause_error
def test_hello_raise
    begin
        hello.do_raise
    rescue => ex
        puts "I catch it outside! because it raised!"
        puts ex.class
    end
end

#test_hello_raise

def raise_error
    begin
        #will be a RuntimeError
    raise "this a runtimeError test"
    rescue => exception
        puts exception.message
    end
end

raise_error

#if set nothing after rescue,then it will only catch RuntimeError
def ctl_c()
    1.upto(10) do |i|
        begin
            puts i
            sleep(1)
        rescue Exception=> exception
            puts exception.class 
            puts "catched"
        end
    end
end

#ctl_c()

require 'net/http'

def timeout()
    begin
        Net::HTTP.start("test.net") do |http|
            puts "http!"
        end
    # rescue more than one !
    rescue Timeout::Error ,StandardError => exception
        puts exception.class
        puts "catched!"
    end
end
timeout()

## child's child exception
## catch exception in the most outside function
def fun1
    raise "exception!!"
end

def fun2
    fun1
end

def fun3
    fun2
end

begin
    fun3
rescue =>e
    puts e
end    