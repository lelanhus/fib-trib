class FibTrib
  
  def sequence(n, pos = 0, sum = true)
    base_array = [1,1,2]
    return base_array[pos] if pos < 2 || pos == 2
    iterator = pos - 2
    
    iterator.times do
      base_array << get_current_sum(n, base_array)
    end    
    return base_array.last
  end
  
  private
  
  def get_current_sum(n, base_array)
    adjusted_n = n + 2
    if adjusted_n > base_array.length || adjusted_n == base_array.length
      base_array.inject { |k,v| k + v }
    else
      drop_amount = base_array.length - adjusted_n
      base_array.drop(drop_amount).inject { |k,v| k + v }
    end
  end

end