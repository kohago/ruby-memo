def yield_block
    yield
end

#yield!! can eval block
yield_block { puts "I am a block be yielded!"}


# block is converted to  Proc because of &
# block is not a object
# proc is a object
def be_proc(&block)
    block.call
    puts block.class
end
be_proc { puts "I am converted to a proc by & then use call to be executed!"}


#Proc is a class,can be new
def create_proc
    proc = Proc.new { puts "I am a Proc created by Proc.new"}
    proc.call
end
create_proc

#create Proc with parameters
def create_proc_with_params
    proc = Proc.new { |a| puts a * 2 }
    #on check on numbers of paramaters
    proc.call(4,6)
    proc.call(5)
end
create_proc_with_params


#lambda{ puts "I am a lambda" } is a Proc.new
def create_lambda_with_parameters
    lambda1 = lambda{ | a ,b ,c | puts "I am a lambda with #{a},#{b},#{c}" }
    begin
        lambda1.create_lambda_with_parameters(1,2)
    rescue => exception
        puts exception.message
    end
end
create_lambda_with_parameters

#create Proc with parameters
def create_proc_with_return
    proc = Proc.new { return puts "I am a proc with return" }
    #on check on numbers of paramaters
    proc.call()
    # will not be executed!
    puts "I am behind proc's call that with a return "
end
create_proc_with_return

#lambda{ puts "I am a lambda" } is a Proc.new
def create_lambda_with_return
    lambda1 = lambda{return puts "I am a lambda" }
    lambda1.call
    puts "I am behind lambda's call that with a return "
end
create_lambda_with_return
