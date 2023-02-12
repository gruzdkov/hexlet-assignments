# frozen_string_literal: true

# BEGIN
def count_by_years(data)
  data.each_with_object({}) do |item, acc|
    if item[:gender] == 'male'
      year = item[:birthday].split('-').first

      acc[year] ||= 0
      acc[year] += 1
    end
  end
end
# END

