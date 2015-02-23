#what am i doing?
#input: arbitrary input
#output: locate data inside of it?

#don't i need: an array, a min, a max, and ______???(something else)

#so i need to find a 'root node' then create a binary tree out of that information. it would be cool to print out each level of the tree on a new line

class Node
  attr_reader :value, :left_child, :right_child
  def initialize(value, left_child, right_child) #left and right children are optional, i neeed to reformat the way these args are formatted

    @value = value
    @left_child = left_child
    @right_child = right_child
     #is this an object, it needs to store parents and children too
     #my node needs to know it is either the father_node or has a parent node
     #two types of nodes: original node and regular node
     #father node always has a child
     #child node always have a parent
     #some nodes don't have children

  end
end

    def build_tree(array)
      #goes to mid point of array (because its sorted)
      #assigns midpoint object to the middle number
      #then it goes through numberes to the left and right and assigns them as children (left or right) and assigns a parent
      array = array.sort #this just confirms my array is sorted, technically I won't need this later on once my algorithm works
      #adding line for more descriptive commit
      length_of_array = array.length
      midpoint = array[(length_of_array/2)]
      index_of_midpoint = array.index(midpoint)
      #what if my midpoint is duplicated occurs twice, does my logic cover that
      left_child = array[0..(index_of_midpoint-1)]
      right_child = array[(index_of_midpoint+1)..-1]
      p "midpoint is: #{midpoint}"
      p "left child is: #{left_child}"
      p "right_child is: #{right_child}"

      #i think i'm just continually assigning these variables until i can't do it any more

      #how will i know when im done? doesn't this data need to be persistant?

      #so this build tree might make more sense outside of the node class

      # once there is only one number, make that bottom number a node.

      #the first thing to do is make the midpoint a node

      p "----------"
      original_node = Node.new(midpoint, left_child, right_child)
      p "hey the OG original node is: #{original_node}"
      p "it's value is: #{original_node.value}"
      p "its left children are: #{original_node.left_child}"
      p "its right children are: #{original_node.right_child}"


    end

     def crawler
      #idk, scans the data
      #'locate dtaa inside of data structure'
    end


build_tree([1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324])