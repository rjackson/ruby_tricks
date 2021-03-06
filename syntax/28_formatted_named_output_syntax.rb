order = {"Item 1" => 10, "Item 2" => 19.99, "Item 3" => 4.50}

item_size  = (["Item"] + order.keys).map(&:size).max
price_size = ( ["Price".size] +
               order.values.map { |price| ("$%.2f" % price).size } ).max

puts "%<item>-#{item_size}s | %<price>#{price_size}s" %
     {item: "Item", price: "Price"}
puts "-" * (item_size + price_size + 3)
order.each do |item, price|
  puts "%<item>-#{item_size}s | $%<price>#{price_size - 1}.2f" %
       {item: item, price: price}
end


# Output:
#  Item   |  Price
#  ---------------
#  Item 1 | $10.00
#  Item 2 | $19.99
#  Item 3 | $ 4.50
