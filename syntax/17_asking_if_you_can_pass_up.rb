class DontDelegateToMe;                                  end
class DelegateToMe;     def delegate; "DelegateToMe" end end

module DelegateIfICan
  def delegate
    if defined? super
      "Modified:  #{super}"
    else
      "DelegateIfICan"
    end
  end
end

puts DelegateToMe.new.extend(DelegateIfICan).delegate
puts DontDelegateToMe.new.extend(DelegateIfICan).delegate

# Output:
#
# Modified: DelegateToMe
# DelegateIfICan
