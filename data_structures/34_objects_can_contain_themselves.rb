ring            = [:one, [:two, [:three]]]
ring.last.last << ring

position = ring
4.times do
  puts position.first
  position = position.last
end

# Output:
#     one
#     two
#     three
#     one
