pos  = DATA.pos
list = DATA.readlines

if ARGV.empty?
  puts list.shift
else
  list.push(*ARGV)
end

DATA.reopen(__FILE__, "r+")
DATA.truncate(pos)
DATA.seek(pos)
DATA.puts list

__END__
Service-Oriented Design with Ruby and Rails
Practical Object-Oriented Design in Ruby
