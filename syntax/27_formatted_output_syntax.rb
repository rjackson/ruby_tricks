def debug(name, content)
  puts "%s:  %p" % [name, content]
end

debug "Num",      42
debug "Objects",  {"Grays" => %w[James Dana Summer]}

# Output:
#  Num:  42
#  Objects:  {"Grays"=>["James", "Dana", "Summer"]}
