class Node
  attr_reader :vertex, :parent, :children

  # @params [Integer] vertex
  # @params [Array<Integer>] children
  # return [Array<Integer>]
  def initialize(vertex: -1, children: [])
    @vertex = vertex
    @children = children
  end

  # @params [Integer] nodes_count
  # @params [Array<Integer>] parents
  # return [Node]
  def create_tree(parent_vertices)
    parent_vertices.each.with_index(1) do |parent_vertex, i|
      # 子を持たない親が存在したら、その親でこのif文には入らないから、ループが終了するか
      if parent_vertex == vertex
        child = Node.new(vertex: i)
        child.create_tree(parent_vertices)
        children.push(child)
      end
    end
  end

  # @params [Node] root_node
  # @params [Integer] vertex
  # return [Node | nil]
  def self.find_node_by_vertex(root_node, vertex)
    root_node.children.each do |node|
      if node.vertex == vertex
        return node
      end

      unless node.children.empty?
        target_node = find_node_by_vertex(node, vertex)
        if target_node
          return target_node
        end
      end
    end

    nil
  end
end

begin
  lines = readlines.map(&:chomp)
  parent_vertices = lines[1].split.map(&:to_i)
  querys = lines[3..].map(&:to_i)

  # 根を表すvertexを生成
  root_node = Node.new(vertex: 0)

  # 木を作る
  root_node.create_tree(parent_vertices)

  querys.each do |query|
    parent_vertex = parent_vertices[query - 1]
    parent = Node.find_node_by_vertex(root_node, parent_vertex)
    puts parent.children.map(&:vertex).join(" ")
  end
rescue StandardError => e
  p "raise error:", e.message
end