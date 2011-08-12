$: << '.'
t1 = Thread.new { require 'a' }
t2 = Thread.new { require 'b' }
[t1, t2].each(&:join)
puts :OK
