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

     #the original midpoint we describe as a node object, but after that, we are kinda recrusively turning values into node objects

     #the midpoint is always a node object (this will get me a balanced tree), then i find the new midpoint of the two children and create new node objects.

     #if the left or right child is an array length of 1, it is a node object, but without children

     #what is the behavior for when i get to the bottom of the leaves?




  end
end

    def build_tree(array)
      array = array.sort #im supposed to assume its sorted
      length_of_array = array.length
      midpoint = array[(length_of_array/2)]
      index_of_midpoint = array.index(midpoint)
      left_child = array[0..(index_of_midpoint-1)]
      right_child = array[(index_of_midpoint+1)..-1]
      original_node = Node.new(midpoint, left_child, right_child)
      #where do my nodes go? an array?

      #so do i create the node objects in the build tree method or in the initialization of the node object, i think if i want to build it, i need to seperate it out. the method i glanced at on stack overflow creates the node objects within the initialization, but i'm not sure that makes sense for me, so im going to create the loop here:

      #so what is the node objection creation loop?

      #in the node object initialization:(....im goin back on my word)
        if left_child.length > 1
          midpoint is the node object
        elsif
          the single value is the node with no children
        else
          there are no node children and the childless node is recognized as such
        end #i guess
    end

     def crawler
      #idk, scans the data
      #'locate dtaa inside of data structure'
    end


build_tree([1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324])
# p "next line test--------------------------------"
# build_tree([1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324, 8])
# p "next line test--------------------------------"
# build_tree([1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324, 8, 8])