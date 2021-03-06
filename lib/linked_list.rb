require './lib/node'
require 'pry'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    elsif @head.next_node == nil
      @head.next_node = Node.new(data)
    elsif @head.next_node != nil
      append_at_end(@head.next_node, data)
    end
  end

  def append_at_end(node, data)
    if node.next_node == nil
      node.next_node = Node.new(data)
    else
      node = node.next_node
      append_at_end(node, data)
    end
  end

  def count
    if @head == nil
      0
    else
      count_nodes(@head, count = 1)
    end
  end

  def count_nodes(node, count)
    if node.next_node != nil
      node = node.next_node
      count += 1
      count_nodes(node, count)
    else
      count
    end
  end

  def to_string
    if @head == nil
      ""
    else
      stringify_list(@head, words = "", first = true)
    end
  end

  def stringify_list(node, words, first)
    words << node.data
    if node.next_node != nil
      first = false
      words << " "
      node = node.next_node
      stringify_list(node, words, first)
    else
      words
    end
  end

  def prepend(data)
    current = @head
    @head = Node.new(data)
    @head.next_node = current
  end

  def insert(position, data)
    node = Node.new(data)
    counter = 0
    current = @head
    until counter == position
      counter += 1
      current = current.next_node
    end
    node.next_node = current
    counter = 0
    current = @head
    until counter == position - 1
    counter += 1
    current = current.next_node
    end
    current.next_node = node
  end
end