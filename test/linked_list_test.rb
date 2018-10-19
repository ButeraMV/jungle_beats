require 'minitest/autorun'
require './lib/linked_list'

class LinkedListTest < Minitest::Test
  def setup
    @list = LinkedList.new
  end

  def test_list_can_be_created
    assert @list
  end

  def test_list_is_created_with_head_node_nil
    assert_nil @list.head
  end

  def test_node_can_be_appended_to_head_of_list
    @list.append('doop')

    assert 'doop', @list.head.data
  end

  def test_two_nodes_can_be_appeneded
    @list.append('doop')
    @list.append('deep')

    assert_equal 'deep', @list.head.next_node.data
  end

  def test_list_can_return_count
    @list.append('doop')

    assert_equal 1, @list.count
  end

  def test_list_can_return_count_of_two
    @list.append('doop')
    @list.append('deep')

    assert_equal 2, @list.count
  end

  def test_list_can_output_node_as_string
    @list.append('doop')

    assert_equal 'doop', @list.to_string
  end

  def test_list_can_output_nodes_as_string
    @list.append('doop')
    @list.append('deep')

    assert_equal 'doop deep', @list.to_string
  end
end