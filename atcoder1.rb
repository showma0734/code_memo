def valid?(a,b)
  return false unless [a,b].all?{|obj| obj.is_a?(Integer)}
  return false if a < 1 || a > 10000
  return false if b < 1 || b > 10000
  true
end

def product(a,b)
  return nil unless valid?(a,b)
  (a*b).even? ? "Even" : "Odd"
end


#テスト

puts product("a","a") == nil
puts product(0,0) == nil
puts product(1,2) == "Even"
puts product(3,5) == "Odd"
puts product(10000,10000) == "Even"
puts product(10000,10001) == nil
 
