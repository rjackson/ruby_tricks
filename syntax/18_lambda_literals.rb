minimal = -> { p :called }
minimal.call

loaded = ->(arg, default = :default, &block) { p [arg, default, block] }
loaded.call(:arg){ :block }

# Output:
#   :called
#   [:arg, :default, #<Proc:0x007fe602887878@/.../18_lambda_literals.rb:5>]
