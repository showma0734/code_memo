def valid?(*mochi)
  return false unless mochi.all?{|obj| obj.is_a?(Integer)}
  return false if mochi.any?{|num| num < 1 || num > 100}
  true
end

def kagamimochi(*mochi)
  return nil unless valid?(*mochi)
  mochi.uniq.length
end


#テスト

puts kagamimochi(10,8,8,6) == 3
puts kagamimochi(100,100,100) == 1
puts kagamimochi(101,100,100) == nil
puts kagamimochi(0) == nil
puts kagamimochi("a") == nil

#全てtrue


