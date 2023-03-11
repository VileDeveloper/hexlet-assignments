# frozen_string_literal: true

# rubocop:disable Style/For
# BEGIN
def build_query_string(params = {})
  string_array = []

  params.sort.each do |key, value|
    string_array << "#{key}=#{value}"
  end

  string_array.join('&')
end
# END
# rubocop:enable Style/For
