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
end
