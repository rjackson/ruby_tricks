if /\A(?<last>\w+),\s*(?<first>\w+)\z/ =~ "Gray, James"
  puts "#{first} #{last}"
end
# It must be a literal regex and it must be on the left side of the match operator

# => James Gray
