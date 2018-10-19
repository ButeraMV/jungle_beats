require 'minitest/autorun'
require './lib/node'

class NodeTest < Minitest::Test
  def setup
    @node = Node.new("plop")
  end

  def test_node_can_be_created
    assert @node
  end

  def test_node_knows_its_data
    assert_equal "plop", @node.data
  end

  def test_node_sees_next_node
    assert_nil @node.next_node
  end
end
