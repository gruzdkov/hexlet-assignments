# frozen_string_literal: true

# BEGIN
def fibonacci(number)
  return if number < 0

  return number if number == 0 || number == 1

  result = [0, 1]
  for i in (2..number)
    result = [result[1], result[0] + result[1]]
  end

  return result[1]
end
