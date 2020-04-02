def valid?(a,b,c)
  return false unless [a,b,c].all?{|obj| obj.is_a?(Integer)}
  return false unless [a,b,c].all?{|num| num == 1 || num ==0 }
  true
end

def marbles(a,b,c)
  return nil unless valid?(a,b,c)
  [a,b,c].sum  
end

puts marbles( 1, 0, 1) == 2
puts marbles( 0, 0, 0) == 0
puts marbles( 2, 0, 1) == nil
puts marbles("a" ,"a" ,"a") == nil
puts marbles("a", 0, 1) == nil




