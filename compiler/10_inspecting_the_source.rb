SCRIPT_LINES__ = {}

# If SCRIPT_LINES__ is defined as a hash ruby will populate it with all
# of the source lines from the file.

require_relative "better_be_well_formed_code"

# format:  {"file_name.rb" => ["line 1", "line 2", ...]}
if SCRIPT_LINES__.values.flatten.any? { |line| line.size > 80 }
  abort "Clean up your code first!"
end
