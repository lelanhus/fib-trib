class FibTrib
  def fibonacci(position = 0)
    if position == 0
      1
    elsif position == 1 || position == 2 || position == 3
      position
    else
      pos_1 = position - 1
      pos_2 = position - 2
      fibonacci(pos_1) + fibonacci(pos_2)
    end
  end
  
  def tribonacci(position = 0)
    if position == 0 || position == 1
      1
    else
      position
    end
  end
end