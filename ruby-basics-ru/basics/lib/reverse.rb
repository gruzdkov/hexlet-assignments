# frozen_string_literal: true

# BEGIN
def reverse(str)
  result = ""

  str.split("").each { |c| result = "#{c}#{result}" }

  result
end
# END
