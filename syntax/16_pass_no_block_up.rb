class Parent
  def show_block(&block)
    p args
  end
end

class Child < Parent
  def show_block
    super(&nil)
  end
end

Child.new.show_block { :block }
# => nil
