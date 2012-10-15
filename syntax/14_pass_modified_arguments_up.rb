class Parent
  def show_args(*args)
    p args
  end
end

class Child < Parent
  def show_args(a,b,c)
    a.upcase!
    b = "Wow!"
    super
  end
end

Child.new.show_args("a", "b", "c")
# => ["A","Wow!","c"]
