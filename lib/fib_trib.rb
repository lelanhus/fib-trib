module FibTrib

  class << self
  
    def sequence(n, pos = 0)
      base_array = [1,1,2]
      
      return base_array[pos] if pos_is_too_close?(pos)
      
      iterator = pos - 2
      build_sum(iterator, base_array, n)
      return base_array.last
    end
  
    private
    
    def pos_is_too_close?(pos)
      pos < 2 || pos == 2
    end
    
    def build_sum(iterator, base_array, n)
      iterator.times do
        base_array << get_current_sum(n, base_array)
      end
    end
  
    def get_current_sum(n, base_array)
      adjusted_n = n + 2
      needs_sum?(adjusted_n, base_array) ? get_sum(base_array) : last_sum(adjusted_n, base_array)
    end
    
    def last_sum(adjusted_n, base_array)
      drop_amount = base_array.length - adjusted_n
      get_sum(base_array.drop(drop_amount))
    end
    
    def needs_sum?(adjusted_n, base_array)
      adjusted_n > base_array.length || adjusted_n == base_array.length
    end
    
    def get_sum(array)
      array.inject { |k,v| k + v }
    end

  end
end