#what am i doing?
#input: arbitrary input
#output: locate data inside of it?

#don't i need: an array, a min, a max, and ______???(something else)

#so i need to find a 'root node' then create a binary tree out of that information. it would be cool to print out each level of the tree on a new line

class Node
  def initialize#(value)
    #@value = value
     #is this an object, it needs to store parents and children too
  end

  def crawler
    #idk, scans the data
    #'locate dtaa inside of data structure'
  end

  def build_tree(array)
    #goes to mid point of array (because its sorted)
    #assigns midpoint object to the middle number
    #then it goes through numberes to the left and right and assigns them as children (left or right) and assigns a parent
    array = array.sort #this just confirms my array is sorted, technically I won't need this later on once my algorithm works
    #adding line for more descriptive commit
    length_of_array = array.length
    midpoint = array[(length_of_array/2)]
    p "hey, here is the array:"
    p array
    p "array length is #{length_of_array}"
    p "hey I'm the midpoint!: #{midpoint}"
    #so each midpoint will have a left child and right child
    #starting at the midpoint, each value will have 1. a parent, a left child, and a right child

    #left_child = array[0..(array[midpoint])]

    left_child = array[0..(midpoint-1)]
    p "hey left children are: #{left_child}"

  end
end

new_node = Node.new
new_node.build_tree([1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324])