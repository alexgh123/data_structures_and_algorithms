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

class Node
  attr_reader :solo_value, :left_child, :right_child

  def initialize(solo_value, left_child=[], right_child=[])
    p "solo_value's class is: #{solo_value.class}"
    @solo_value = parent_node_finder
    # @left_children_array = left_children_array
    # @right_children_array = right_children_array
    #left child = left child
    #right child is right child
  end

  def parent_node_finder(array)


  end

  #there is something else here where I want to pass two optional arguments to the node initialization, if the two adiontal arguments are arrays, then find the parent array, if they are just one number, then just make that a node.

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

#so when i create a node, i want the value/ aka node and then an array. but it seems i also want to just pass an array to the node class to create a new node object, well i have to pick if i want to creat a node object out of a number or an array

# so again, what do i need to pass to the node object. i need to pass it an array. it will then call the build node method on that array

node_experiment = Node.new([1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324])
p '---------break------------'
p ""
p node_experiment.solo_value
p 'eh------'
p node_experiment.build_tree(node_experiment.solo_value)