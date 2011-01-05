class FibTrib
  
  def sequence(n, pos = 0)
    return 1 if needs_one?(pos)
    return fibonacci(pos) if n == 0
    return tribonacci(pos) if n == 1
  end
  
  def fibonacci(position = 0)
    return 2 if position == 2
    return 1 if needs_one?(position)
    x = 0
    positions_array(0, position).each do |pos|
      x += fibonacci(pos)
    end
    return x
  end
  
  def tribonacci(position = 0)
    return 1 if needs_one?(position)
    if position == 2
      position
    else 
      x = 0
      positions_array(1, position).each do |pos|
        x += tribonacci(pos)
      end
      return x
    end
  end
  
  private
  
  def positions_array(n, position)
    if n == 0
      positions = []
      positions << position - 1
      positions << position - 2
    else
      positions = []
      positions << position - 1
      positions << position - 2
      positions << position - 3
    end
  end
  
  def needs_one?(position)
    return true if position == 1 || position == 0
  end
end