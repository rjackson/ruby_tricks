DATA.flock(File::LOCK_EX | File::LOCK_NB) or abort "Already running."
# http://www.ruby-doc.org/core-1.9.3/File.html#method-i-flock

trap("INT", "EXIT")

puts "Running..."
loop do
  sleep
end

__END__
DO NOT DELETE:  used for locking
