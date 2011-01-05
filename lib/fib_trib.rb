class FibTrib
  
  def sequence(n, pos = 0)
    return fibonacci(pos) if n == 0
    return tribonacci(pos) if n == 1
  end
  
  private
  def fibonacci(position = 0)
    return 2 if position == 2
    return 1 if needs_one?(position)
    sum_sequence(0, position)
  end
  
  def tribonacci(position = 0)
    return 1 if needs_one?(position)
    if position == 2
      position
    else 
      sum_sequence(1,position)
    end
  end
  
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