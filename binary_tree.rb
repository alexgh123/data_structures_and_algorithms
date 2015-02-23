#what am i doing?
#input: arbitrary input
#output: locate data inside of it?

#don't i need: an array, a min, a max, and ______???(something else)

#so i need to find a 'root node' then create a binary tree out of that information. it would be cool to print out each level of the tree on a new line

#found someone else's testing on github, using it to help drive my devleopment:https://gist.github.com/yuya-takeyama/812489

# module BinaryTree
#   class Node
#     def share_examples_for(arg)

#     end
#   end
# end

#idk what the above is, using below for me

#so my node class accepts the array value, pulls out a parent node and children nodes

#it seems like I'm trying to do a lot, lets break it down
  # 1. take an array as an input for a new class
  # 2. identify the midpoint aka get the parent node
  # 3. find the children node of the parent nodes
  #     3.1 the parent node will have two children arrays
  #     3.2 the two children arrays will provide the child nodes and
  #         those nodes will make the

  #i want the parent node finder to return the parent node and the children arrays or children

#so does the node class creat node objects, or create
#im getting confused on when I'm accepting arrays to find my parent node and when i need to create a node object with the node

# two ideas here:
#1.  I accept an array to find my original parrent node
#2. i accept a single number to create a node object

# a new node is passed a single number value, that is its value
  #but, it could have children, or a whole number of descendents.
    #this is what I am having trouble acomadating

    #if there is an array, then there is def a child
    #if there is one number, there is a child
    #if the array is empty, there is no child

    #will take an array as input
    #will return a child, or will say there is no child
    #how should no child be represented (an empty array)

    #i'm also trying to creat a basecase here where if the array is empty, you don't creat another node object

    #what happens if I the node doesn't have a child, it just should exist, like the search can't go further

    #really, the way my node should look is just show the value, and the two children after that, there will be nodes within that


class Node
  attr_accessor :value, :left_child, :right_child

  def initialize(value, left_child=nil, right_child=nil)
    @value = value
    @left_child = left_child
    @right_child = right_child
  end

end

class BinarySearchTree
  attr_accessor :array, :tree

  def initialize(array, tree=nil)
    @array = array
    @tree = tree

    build_tree(@array)

  end

  def build_tree(array, left=0, right=array.length-1)
    return if left > right

    array = merge_sort(array)

    index_mid = left +(right-left)/2
    node = Node.new(array[index_mid])

    node.left_child = build_tree(array, left, index_mid-1)
    node.right_child = build_tree(array, index_mid+1, right)
    #i was really close in my build of this, the .left_child notation was a little tricky for me though. it is usable b/c of the

  end

end






def left_child_finder(array)
end
def right_child_finder(array)
end

class Node
  attr_reader :solo_value, :left_child, :right_child, :array

  def initialize(array) #not sure there need to be optional args passed here

    array = array.sort

    @parent_node = #i have no idea

    @solo_value = parent_node_finder(array)
    @left_children_array = left_children_array_finder(array)
    @right_children_array = right_children_array_finder(array)
    @left_child = @left_children_array[-1]
    @right_child = @right_children_array[0]

    #the solo value here has to exist, but the other value of children doesn't have to exist
  end

  def parent_node_finder(array)
    array[(array.length/2)]
  end

  def left_children_array_finder(array)
    index_of_midpoint = array.index(@solo_value)
    left_children = array[0..(index_of_midpoint-1)]
  end

  def right_children_array_finder(array)
    index_of_midpoint = array.index(@solo_value)
    right_child = array[(index_of_midpoint+1)..-1]
  end


  def build_tree(array)
    if array.length == 0
      p "we are at the last leaf, no more children to create node objects with"
    elsif array.length == 1
      p "elsif comment"
      childless_node = Node.new(array[0])

    else
      p "else comment"
      array = array.sort
      length_of_array = array.length
      midpoint = array[(length_of_array/2)]

      index_of_midpoint = array.index(midpoint)
      left_child = array[0..(index_of_midpoint-1)]
      right_child = array[(index_of_midpoint+1)..-1]
      original_node = Node.new(midpoint, left_child, right_child)
      #i can't call the node method on one nubmer!!!
      #i was making a call for the array, and then also for the value
    end
  end
end #ends node class


node_experiment = Node.new([1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324])
p node_experiment
