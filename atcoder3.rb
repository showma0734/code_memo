def valid?(*nums)
  return false unless nums.all?{|obj| obj.is_a?(Integer)}
  return false if nums.any?{|num| num < 1 || num > 10**9}
  true
end

def division(*nums)
  return nil unless valid?(*nums)
  sum = 0
  p result(nums,sum)
  #while ds.all?(&:even?) do
  #  sum = sum.succ
  #  ds = ds.map{ |d| d/2 }
  #end
end

def result(arr,cnt)
  return cnt if arr.any?{|a| a.odd?} 
  cnt += 1
  s = arr.map{|a| a/ 2}
  result(s,cnt)
end



#テスト

puts division(8,12,40) == 2
puts division(5,6,8,10) == 0
puts division("a","a") == nil
puts division(11**9) == nil
puts division(10**9) == 9
puts division(1) == 0
puts division(0) == nil



