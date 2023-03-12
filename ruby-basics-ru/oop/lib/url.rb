# frozen_string_literal: true

# BEGIN
# rubocop:disable Style/Documentation
require 'uri'

class Url
  include Comparable
  extend Forwardable

  attr_reader :address, :params

  def initialize(address)
    @address = address
    @uri = URI(@address)
    @params = params_by_uri(@uri)
  end

  def_delegators :@uri, :scheme, :host, :port

  def query_params
    params
  end

  def query_param(key, value = nil)
    params[key] || value
  end

  def <=>(other)
    [scheme, host, port, params] <=> [other.scheme, other.host, other.port, other.params]
  end

  private

  def params_by_uri(uri)
    new_params = {}
    query_string = uri.query

    return new_params if query_string.nil?

    query_string.split('&').sort.each do |params_strings|
      key, value = params_strings.split('=')

      new_params[key.to_sym] = value
    end

    new_params.sort.to_h
  end
end
# rubocop:enable Style/Documentation
# END
