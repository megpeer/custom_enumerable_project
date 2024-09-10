module Enumerable
  
  def my_each_with_index
    index = 0
    for item in self
      yield(item, index)
      index += 1
    end
  end

  def my_count
    counter = 0
    if block_given?
        my_each { |i| counter +=1 if yield(i)}
        counter
    else
        for item in self 
          counter +=1 
        end
    end
   counter
  end

  def my_map
    new_array = []
    for item in self
      new_array << yield(item)
    end
    new_array
  end

  def my_select
    new_array = []
    for item in self
    if yield(item)
      new_array << item
    end
    end
    new_array
  end
  def my_all?
    result = true
    if block_given?
      my_each { |i| result = false if yield(i) == false}
    end
    result
  end
    
  def my_any?
    result = false
    if block_given?
      my_each { |i| result = true if yield(i) == true}
    end
    result
  end
  
  def my_none?
    result = true
    if block_given?
      my_each { |i| result = false if yield(i) == true}
    end
    result
  end
  
  def my_inject(accumulator = 0)
    result = accumulator
    for item in self
      result = yield(result, item)
    end
      result
  end

class Array
  
end

  def my_each
      for element in self
        yield(element)
    end
  end
end
