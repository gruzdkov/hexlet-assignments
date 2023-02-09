# frozen_string_literal: true

# BEGIN
def fizz_buzz(start, stop)
  return if stop < start

  result = []
  for i in (start..stop)
    m_3 = (i % 3).zero?
    m_5 = (i % 5).zero?
    token = i

    if m_3 && m_5
      token = "FizzBuzz"
    elsif m_3
      token = "Fizz"
    elsif m_5
      token = "Buzz"
    end

    result << token
  end

  result.join " "
end
# END
