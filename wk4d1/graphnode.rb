require "Set"

class GraphNode
    
    attr_accessor :value, :neighbors

    def initialize(val, neighbors = [])
        @value = val
        @neighbors = neighbors
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

#  def depth_first(node, visited = Set.new )
#     return nil if visited.include?(node.value)
#     puts node.value
#     visited.add(node.value)
#     node.neighbors.each do |neighbor|
#         depth_first(neighbor, visited)
#     end
# end

# p depth_first(f)

# graph = {
#   'a': ['b', 'c', 'e'],
#   'b': [],
#   'c': ['b', 'd'],
#   'd': [],
#   'e': ['a'],
#   'f': ['e']
# }

# def depth_first(node, graph, visited = Set.new())
#   return nil if visited.include?(node.to_sym)

#   puts node
#   visited.add(node.to_sym)

#   graph[node.to_sym].each do |neighbor|
#     depth_first(neighbor, graph, visited);
#   end
# end

# depth_first('f', graph)

def depth_first(graph)
  visited = Set.new()
  graph.keys.each do |node|
    _depth_first(node, graph, visited)
  end
end

def _depth_first(node, graph, visited)
  return nil if visited.include?(node.to_sym)

  puts node
  visited.add(node.to_sym)

  graph[node.to_sym].each do |neighbor|
    _depth_first(neighbor, graph, visited)
  end
end

# depth_first(graph)

graph = {
  'h': ['i', 'j'],
  'i': [],
  'j': ['k'],
  'k': [],
  'l': ['m'],
  'm': []
}

depth_first(graph)