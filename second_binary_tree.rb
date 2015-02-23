#found someone else's testing on github, using it to help drive my devleopment:https://gist.github.com/yuya-takeyama/812489

# module BinaryTree
#   class Node
#     def share_examples_for(arg)

#     end
#   end
# end

#idk what the above is, using below for me


class Node
  attr_reader :array, :left_child, :right_child

  def initialize(array, left_child=[], right_child=[])
    p "array's class is: #{array.class}"
    @array = array
    @left_child = left_child
    @right_child = right_child
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

#so when i create a node, i want the value/ aka node and then an array. but it seems i also want to just pass an array to the node class to create a new node object, well i have to pick if i want to creat a node object out of a number or an array

node_experiment = Node.new([1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324])
p '---------break------------'
p ""
p node_experiment.array
p 'eh------'
p node_experiment.build_tree(node_experiment.array)