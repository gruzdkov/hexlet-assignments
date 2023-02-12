# frozen_string_literal: true

# BEGIN
def get_same_parity(numbers)
  return [] if numbers.empty?

  numbers[0].even? ? numbers.filter(&:even?) : numbers.filter(&:odd?)

end
# END
