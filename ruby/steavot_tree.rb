# This code was robbed out of the book and edited for the exercise
class Tree
  attr_accessor :children, :node_name

  def initialize(the_tree={})
    @node_name = the_tree.keys.first
    @children = []
    the_tree[@node_name].each { |new_tree, child|
      @children << Tree.new(new_tree => child)
    }
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end


