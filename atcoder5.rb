def valid?(n,a,b)
  return false unless [n,a,b].all?{|obj| obj.is_a?(Integer)}
  return false if n < 1 || n > 10**4
  return false if a < 1 || a > b
  return false if b > 36
  true
end

def digitsum (n,a,b)
  return nil unless valid?(n,a,b)
  calculation(n,a,b)
end

def calculation(n,a,b)
  result = 0
  (0..n).each do |x|
    digit = x.to_s.split("").map(&:to_i).sum
    result += x if a <= digit && digit <= b
  end
  p result
end

#test

puts digitsum(20,2,5) == 84
puts digitsum(100,4,16) == 4554
puts digitsum("a","b","c") == nil
puts digitsum(11**4,2,6) == nil
puts digitsum(40,0,20) == nil
puts digitsum(40,1,20) == 820
puts digitsum(40,1,37) == nil
puts digitsum(40,1,36) == 820


