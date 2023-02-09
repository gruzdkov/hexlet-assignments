# frozen_string_literal: true

# BEGIN
def compare_versions(ver1, ver2)
  return 0 if ver1 == ver2

  (maj1, min1) = ver1.split('.').map(&:to_i)
  (maj2, min2) = ver2.split('.').map(&:to_i)

  maj_res = maj1 <=> maj2

  maj_res.zero? ? min1 <=> min2 : maj_res

end
