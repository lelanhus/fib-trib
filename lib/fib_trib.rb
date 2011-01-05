class FibTrib
  
  def sequence(n, pos = 0)
    return 1 if zero_or_one?(pos)
    return fibonacci(pos) if n == 0
    return tribonacci(pos) if n == 1
  end
  
  def fibonacci(position = 0)
    if zero_or_one?(position)
      1
    else
      pos_1 = position - 1
      pos_2 = position - 2
      fibonacci(pos_1) + fibonacci(pos_2)
    end
  end
  
  def tribonacci(position = 0)
    if zero_or_one?(position)
      1
    elsif position == 2
      position
    else 
      pos_1 = position - 1
      pos_2 = position - 2
      pos_3 = position - 3
      tribonacci(pos_1) + tribonacci(pos_2) + tribonacci(pos_3)
    end
  end
  
  private
  
  def zero_or_one?(position)
    position == 0 || position == 1
  end
end