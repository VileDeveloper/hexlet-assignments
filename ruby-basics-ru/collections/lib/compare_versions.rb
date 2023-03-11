# frozen_string_literal: true

# BEGIN
def compare_versions(ver1, ver2)
  ver1_arr = ver1.split('.').map(&:to_i)
  ver2_arr = ver2.split('.').map(&:to_i)

  ver1_arr <=> ver2_arr
end
# END
