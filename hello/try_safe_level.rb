# StandError->RuntimeError # the most case

# can't disgrade security level. casuse SecurityError
def  disgrade_safe
    begin
        puts $SAFE
        $SAFE = 1
        puts $SAFE
        $SAFE = 0
    rescue SecurityError=> e
        puts e.class
    end
end

#disgrade_safe

def in_thread
    $SAFE = 0
    hoge = 0
    #Thread!
    th = Thread.new{
        # inherit the parents thread's $SAFE
        puts "$SAFE #{ $SAFE }"
        puts "hoge #{hoge}"
        $SAFE = 1
        hoge = 1
    }
    th.join
    puts "$SAFE #{ $SAFE }"
    puts "hoge #{hoge}"
end

#in_thread

def taint_it
    puts "$SAFE #{ $SAFE }"

    code1 = "puts 'this is untainted'"
    eval(code1)

    code2 = "puts 'this is tainted'"
    code2.taint
    eval(code2)
    puts code2.tainted?

    code2.untaint
    puts code2.tainted?
end

taint_it
#$SAFE = 1
#taint_it