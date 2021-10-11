# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    if self.length > 0
        return self.max - self.min
    else 
        return nil 
    end
  end

  def average
    return nil if self.length < 1
    sum = self.sum 
    length = self.length 
    sum / (length * 1.0)
  end

  def median
    return nil if self.length < 1
    sorted_array = self.sort_by {|num| num}
    if sorted_array.length.odd?
        return sorted_array[sorted_array.length / 2 ]
    else 
        first_mid_idx = sorted_array.length / 2
        second_mid_idx = first_mid_idx - 1
        sums = sorted_array[first_mid_idx] + sorted_array[second_mid_idx]
        sums / (2 * 1.0)
    end
  end

  def counts
    hash = Hash.new(0)
    self.each do |ele|
        hash[ele] += 1
    end
    hash
  end

  def my_count(val)
    count = 0
    self.each do |num|
        if num == val 
            count += 1
        end
    end
    count
  end

  def my_index(val)
    self.each_with_index do |ele, i|
        if val == ele 
            return i 
        end
    end
    return nil
  end

  def my_uniq
    arr = []
    hash = Hash.new(0)
    self.each do |ele|
        hash[ele] += 1
    end
    hash.each do |k, v|
        if v > 1
            arr << k 
        else 
            arr << k
        end
    end
    arr
  end

  def my_transpose
    arr = Array.new(self.length) {Array.new(self[0].length)}
    self.each_with_index do |subarray, i|
        subarray.each_with_index do |ele, j|
            arr[i][j] = self[j][i]
        end
    end
    arr
  end

end
