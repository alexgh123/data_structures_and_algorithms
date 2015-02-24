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

    array = array.sort


    index_mid = left +(right-left)/2
    node = Node.new(array[index_mid])

    node.left_child = build_tree(array, left, index_mid-1)
    node.right_child = build_tree(array, index_mid+1, right)
    #i was really close in my build of this, the .left_child notation was a little tricky for me though. it is usable b/c of the

    @tree = node
    @tree

  end

  def breadth_first_search(query)
    p "guess is #{query}"
    queue = []
    root = @tree.value
    p "hey root is #{root}"

    return @tree if root == query

    left_child = @tree.left_child
    right_child = @tree.right_child

    queue << left_child if left_child != nil
    queue << right_child if right_child != nil

    p "hey before loop, queue is #{queue}"

    count = 0
    loop do
      count +=1
      return "queue is empty!!!" if queue.empty?
      node = queue.shift
      p "node is #{node.value}"

      return node.value if query == node.value


      queue << node.left_child if node.left_child != nil
      queue << node.right_child if node.right_child != nil
      p ""
      p queue
      p ""
      p "queue length is: #{queue.length}"
      p "Count is #{count}"
    end
  end

  def depth_first_search(querry)
    # stack =  #something?
    #if it goes in stack, it then goes into result
    #there is a criteria about once something has been visited, or if it will be visited...
    # result = #something
  end

  def display_tree()#block to be passed
    list = []
    yield @tree.value
    left_child = @tree.left_child
    right_child = @tree.right_child

    list << left_child if left_child != nil
    list << right_child if right_child != nil

    loop do
      break if list.empty?
      node = list.shift
      yield node.value
      list << node.left_child if node.left_child != nil
      list << node.right_child if node.right_child != nil
    end
  end

end #ends binary search tree class

an_array = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]

a_tree = BinarySearchTree.new(an_array)

p a_tree.display_tree {|x| print " #{x} "}



a_tree.breadth_first_search(7)
p '---------'
p '---------'
a_tree.breadth_first_search(4)

p '---------'
p '---------'
a_tree.breadth_first_search(6)




