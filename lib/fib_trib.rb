class FibTrib
  
  def sequence(n, pos = 0)
    return 1 if needs_one?(pos)
    return 2 if pos == 2
    sum_sequence(n, pos)
  end
  
  private
  
  def sum_sequence(n, position)
    x = 0
    positions_array(n, position).each do |pos|
      x += sequence(n,pos)
    end
    return x
  end
  
  def positions_array(n, position)
    iterator = n + 2
    positions = []
    until iterator == 0
      positions << position - iterator
      iterator = iterator - 1
    end
    return positions
  end
  
  def needs_one?(position)
    return true if position == 1 || position == 0
  end
end