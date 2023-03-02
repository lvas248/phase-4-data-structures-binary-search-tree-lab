require_relative './node'
require 'pry'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def search(value)

    node_to_visit = self.root
    # test root node
    # return node if value matches
    # add node.left if given value is lass than node value
    # add node.right if given value is greater than node value

    while !node_to_visit.nil?

      if node_to_visit.value == value
        return node_to_visit
      elsif value > node_to_visit.value
        node_to_visit = node_to_visit.right
      else
        node_to_visit = node_to_visit.left
      end
      nil
    end

  end



  def insert(value)
    new_node = Node.new(value)

    # # create node and set equal to root node
    # # test the values of new_node compared to node:
    #   # if values are the same, return nil
    #   # elsif new_node value is less than node.value
    #     #if node.left exists, set node = node.left
    #     #else node.left = new_node
    #   # else new_node value is greater than node, set node equal to node.right
    #     #if node.right exists, set node = node.right
    #     #else node.right = new_node

    if self.root.nil?
      self.root = new_node
    else
        node = self.root
        loop do
          if node.value == new_node.value
            return nil
          elsif new_node.value < node.value
            node.left ? ( node = node.left ) : ( 
              node.left = new_node
              return new_node)
          else
            node.right ? ( node = node.right ) : ( 
              node.right = new_node
              return new_node )
          end
        end
      end
    end

end 

# tree = BinarySearchTree.new

# root = Node.new(1)

# tree.root = root



# binding.pry