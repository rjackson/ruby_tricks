class Parent
  def show_args(*args)
    p args
  end
end

class Child < Parent
  def show_args(a,b,c)
    super()
  end
end

Child.new.show_args(:a, :b, :c)
# => []
