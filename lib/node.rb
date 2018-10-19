require 'minitest/autorun'
require './lib/node'

class NodeTest < Minitest::Test
  def test_node_can_be_created
    node = Node.new("plop")

    assert node
  end
end
