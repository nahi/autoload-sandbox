$: << '.'
autoload :D, 'd'
t1 = Thread.new { p D::X }
t2 = Thread.new { p D.d }
[t1, t2].each(&:join)
puts :OK
