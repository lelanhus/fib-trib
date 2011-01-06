class FibTrib
  
  def sequence(n, pos = 0)
    return 1 if needs_one?(pos)
    return 2 if pos == 2
    #return 4 if n != 0 && pos == 3
    if pos_less_n_equals_two?(n, pos)
      m = n - 1
      sum_sequence(m, pos) + 1
    elsif pos_less_n_equals_one?(n, pos)
      m = n - 1
      sum_sequence(m, pos)
    else
      sum_sequence(n, pos)
    end
  end
  
  private
  
  def pos_less_n_equals_two?(n, pos)
    pos - n == 2
  end
  
  def pos_less_n_equals_one?(n, pos)
    pos - n == 1
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