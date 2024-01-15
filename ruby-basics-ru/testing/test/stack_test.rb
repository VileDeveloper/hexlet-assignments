# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def test_push_first_item_success
    stack = Stack.new
    first_item = 'first'

    stack.push!(first_item)

    assert(stack.to_a.first == stack.to_a.last)
    assert(stack.to_a.first == first_item)
  end

  def test_pop_success
    first_item = 'first'
    second_item = 'second'

    stack = Stack.new([first_item, second_item])

    stack.pop!

    assert(stack.to_a.first == stack.to_a.last)
    assert(stack.to_a.first == first_item)
  end

  def test_clear_success
    first_item = 'first'
    second_item = 'second'

    stack = Stack.new([first_item, second_item])

    stack.clear!

    assert(stack.to_a == [])
  end

  def test_empty_success
    stack = Stack.new

    assert(stack.to_a.empty?)
  end

  def test_empty_refute
    stack = Stack.new
    first_item = 'first'

    stack.push!(first_item)

    refute(stack.to_a.empty?)
  end
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
