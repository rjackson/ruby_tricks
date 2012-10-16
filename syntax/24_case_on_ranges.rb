age = rand(1..100)
p age

case age
when -Float::INFINITY..20
  puts "You're too young."
when 21..64
  puts "You are the right age."
when 65..Float::INFINITY
  puts "You're too old."
end

# case statements work on anything that defines === (Range above)
