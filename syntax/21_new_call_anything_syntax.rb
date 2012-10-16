class Callable
  def call
    :my_own_class
  end
end

p -> { :lambda }.()
p [ ].method(:class).()
p Callable.new.()

# Output:
#   :lambda
#   Array
#   :my_own_class
