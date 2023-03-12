# frozen_string_literal: true

# BEGIN
require 'time'

def count_by_years(users)
  final_hash = {}
  gender_years_data = users.map { |user| { gender: user[:gender], year: Time.parse(user[:birthday]).year.to_s } }

  gender_years_data.map do |data|
    key_year = data[:year]
    value_count = gender_years_data.count { |item| item[:gender] == 'male' && item[:year] == key_year }

    final_hash[key_year] = value_count
  end

  final_hash
end
# END
