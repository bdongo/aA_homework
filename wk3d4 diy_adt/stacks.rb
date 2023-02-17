class Stack
  def initialize
    # create ivar to store stack here!
    @stack = []
  end

  def push(el)
    # adds an element to the stack
    @stack << el
  end

  def pop
    # removes one element from the stack
    @stack.pop
  end

  def peek
    # returns, but doesn't remove, the top element in the stack
    @stack[0]
  end
end

class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peak
        @queue[0]
    end

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