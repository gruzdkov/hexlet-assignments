# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def test_push_element
    stack = Stack.new()

    stack.push! '1'
    stack.push! '2'

    assert stack.to_a == ['1', '2']
  end

  def test_pop_element
    stack = Stack.new()

    stack.push! '1'
    stack.push! '2'
    stack.pop!

    assert stack.to_a == ['1']
  end

  def test_stack_clear
    stack = Stack.new()

    stack.push! '1'
    stack.push! '2'
    stack.clear!

    assert stack.to_a == []
  end


  def test_correct_empty_check
    stack = Stack.new()

    stack.push! '1'
    stack.push! '2'

    refute stack.empty?

    stack.clear!

    asert stack.empty?
  end
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
