def valid?(n, t2, x2, y2)
  return false unless [n,t2,x2,y2].all?{|obj| obj.is_a?(Integer)}
  return false if n < 1 || n > 10**5
  return false if t2 < 1 || t2 > 10**5
  return false if x2 < 0 || x2 > 10**5
  return false if y2 < 0 || y2 > 10**5
  true
end


def traveling(n, t2, x2, y2)
  return nil unless valid?(n, t2 ,x2 ,y2) 
  t1,x1,y1 = 0,0,0  
  t = t2 - t1
  x = (x2 - x1).abs
  y = (y2 - y1).abs
  if t.even? == (x + y).even? && (x + y) <= t
    t1, x1, y1 = t2, x2, y2
  else
    return p "NO"
  end  
  p "YES"
end


#test

puts traveling(2, 6, 1, 1) == "YES"
puts traveling(1, 2, 100, 100) == "NO"
puts traveling(0, 2, 100, 100) == nil
puts traveling(10**5, 1,0,1) == "YES"
puts traveling(11**5, 1,0,1) == nil
puts traveling(1, 10**5, 10**5, 10**5) == "NO"
puts traveling(1, 11**5, 11**5, 11**5) == nil
puts traveling("a", "a", "a", "a") == nil
puts traveling("a", 1, 1, 1) == nil
puts traveling(1, "a", 1, 1) == nil
puts traveling(1, 1, "a", 1) == nil
puts traveling(1, 1, 1, "a") == nil

#all true


