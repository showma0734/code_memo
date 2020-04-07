def valid?(n,*mochi)
  return false unless n.is_a?(Integer)
  return false if n < 1 || n > 100
  return false unless mochi.all?{|obj| obj.is_a?(Integer)}
  return false if mochi.any?{|num| num < 1 || num > 100}
  return false if n != mochi.length
  true
end

def kagamimochi(n,*mochi)
  return nil unless valid?(n,*mochi)
  mochi.sort!
  mochi.select.with_index{|m,i| m != mochi[i + 1]}.length
  #mochi.uniq.length
end


#test

puts kagamimochi(4, 10, 8, 8, 6) == 3
puts kagamimochi(3, 100, 100, 100) == 1
puts kagamimochi(3, 101, 100, 100) == nil
puts kagamimochi(0) == nil
puts kagamimochi("a") == nil
puts kagamimochi(1, 1) == 1
puts kagamimochi(1, 0) == nil
puts kagamimochi(100, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1) == 1
puts kagamimochi(101, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1) == nil
puts kagamimochi(2,1) == nil
#all true


