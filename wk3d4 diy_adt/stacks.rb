class Stack

  def initialize
    # create ivar to store stack here!
    @store = []
  end

  def push(value)
    # adds an element to the stack
    store << value
    self #stack instance and will block any other enumerables after array returns by default
  end

  def pop
    # removes one element from the stack
    store.pop
  end

  def peek
    # returns, but doesn't remove, the top element in the stack
    store.last
  end

  def size
    store.length
  end

  def empty?
    store.empty?
  end

  def inspect
    "<#Stack:#{stack.obj_id}>"
  end

  private 
  attr_reader :store

end

class MyQueue
    def initialize
        @inner = []
    end

    def enqueue(el)
      inner.unshift(el)
    end

    def dequeue
      inner.pop
    end

    def show
      return inner.dup #doesnt support inner arrays
    end

    def empty?
      inner.empty?
    end

    private
    attr_reader ::inner

end

class Map

    def initialize
      @map = Array.new
    end

    def set(key, val)
      @map << [key, val]
    end

    def get(key)
      @map.each do |el|
       return el if el[0] == key
      end
    end

    def delete(key)
      (0...@map.length).each do |i|
       @map.delete_at(i) if @map[i][0] == key
      end
    end

    def show
      
    end

end

class Node

  attr_reader :value, :children

  def initialize(value, children = [])
    @value = value
    @children = children
  end


  def dfs(target = nil, &prc)
    prc ||= Proc.new { |node| node.value == value }
    return self if prc.call(self)

    #self.children.each
    children.each do |child|
      result = child.dfs(target, &prc)
      return result unless result.nil?
    end

  end
  
  def bfs(target = nil, &prc)
    prc ||= Proc.new { |node| node.value == value }

    nodes_q = [self]
    until nodes_q.empty?
      node = nodes_q.shift
      return node if prc.call(node)
      nodes_q.concat(node.children)
    end
    
    nil
end

d = Node.new("d")
e = Node.new("e")
f = Node.new("f")
g = Node.new("g")
b = Node.new("b", [d, e])
c = Node.new("c", [f, g])
a = Node.new("a", [b, c])
