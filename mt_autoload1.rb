$: << '.'
loaded_features = $LOADED_FEATURES.dup
1000.times do
  $LOADED_FEATURES.replace(loaded_features)
  autoload :C, 'c'
  t1 = Thread.new { C }
  t2 = Thread.new { C }
  [t1, t2].each(&:join)
  class Object
    remove_const :C
  end
end
puts :OK
