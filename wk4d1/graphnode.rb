class GraphNode
    
    attr_accessor :value, :neighbors

    def initialize(val, neighbors = [])
        @value = val
        @neighbors = neighbors
    end

    def depth_first(node)
        puts node.val

        node.neighbors.each do |neighbor|
            depth_first(neighbor)
        end
    end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]