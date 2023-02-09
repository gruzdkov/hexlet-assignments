# frozen_string_literal: true

# rubocop:disable Style/For
# BEGIN
def build_query_string(query)
  result = []

  keys = query.keys.sort

  keys.each { |key| result << "#{key}=#{query[key]}" }

  result.join('&')
end
# END
# rubocop:enable Style/For
