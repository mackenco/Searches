def dfs(value, node)
  if node.value == value
    return node
  else
    if node.left
      dfs(value, node.left)
    else
      dfs(value, node.right)
    end
  end
end

def bfs(value)
  if self.value == value
    puts self.value
    return self
  else
    [(self.left.bfs(value) if self.left), (self.right.bfs(value) if self.right)]
  end
end