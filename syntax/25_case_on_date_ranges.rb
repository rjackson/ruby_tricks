require 'date'

start_of_aloha_ruby_conf = Date.new(2012, 10, 8)
end_of_aloha_ruby_conf   = Date.new(2012, 10, 9)

case Date.today
when Date.new...start_of_aloha_ruby_conf
  puts "Anticipation is building."
when start_of_aloha_ruby_conf..end_of_aloha_ruby_conf
  puts "Mind being blown."
when (end_of_aloha_ruby_conf + 1)..Date::Infinity
  puts "You've learned some Ruby while in paradise."
end

# Range objects work in a case and Date objects work as a Range endpoint
