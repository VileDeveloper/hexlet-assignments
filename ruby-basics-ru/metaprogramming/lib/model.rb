# frozen_string_literal: true

# BEGIN
module Model
  def initialize(init_attrs = {})
    @attributes = {}

    class_attributes = self.class.attr_options

    class_attributes.each do |name, options|
      default_value = init_attrs.fetch(name, options.fetch(:default, nil))

      method("#{name}=").call(default_value)
    end
  end

  def self.included(base)
    base.attr_reader :attributes
    base.extend SelfMethods
  end

  # rubocop:disable Style/Documentation
  module SelfMethods
    def attr_options
      @attr_options ||= {}
    end

    def attribute(attribute_name, options = {})
      attr_options[attribute_name] = options

      define_method :"#{attribute_name}" do
        @attributes[attribute_name]
      end

      define_method :"#{attribute_name}=" do |value|
        @attributes[attribute_name] = format_value_by_type(value, options[:type])
      end
    end
  end
  # rubocop:enable Style/Documentation
end

def format_value_by_type(value, type)
  return if value.nil?

  case type
  when :datetime
    DateTime.parse(value)
  else
    value
  end
end
# END
