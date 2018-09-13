module Momo
    def momo
        puts "Module! Momo"
    end
end

class Caca
    # add module's method as instance method
    include Momo
end

class Cacaca
    # add module's method as class method
    extend Momo
end

puts Caca.new.momo
begin
    puts Caca.momo
rescue => exception
    puts exception.message
end

puts

begin
    puts Cacaca.new.momo
rescue => exception
    puts exception.message
end

puts Cacaca.momo
