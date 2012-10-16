require 'prime'
n = rand(1..10)
p n

case n
when lambda(&:prime?)
  puts "This number is prime."
when lambda(&:even?)
  puts "This number is even."
else
  puts "This number is odd."
end

# As of Ruby 1.9, lambdas (Proc objects) also define ===
