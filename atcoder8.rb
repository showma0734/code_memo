def valid?(n,y)
  return false unless [n,y].all?{|obj| obj.is_a?(Integer)}
  return false if n < 1 || n > 2000
  return false if y < 1000 || y > 2*10**7
  return false if y % 1000 > 0
  true
end

def otoshidama(n,y)
  return nil unless valid?(n,y)
  return p "-1 -1 -1" if combination(n, y).flatten.all?{|num| num == nil}
  nums = combination(n, y).flatten.select{|num| num != nil}
  arr= []
  until nums.empty? 
    three = nums.shift(3)
    arr << three
  end
  p arr
    
  #a,b,c = -1,-1,-1
  #(0..n).each do |ay|
  #  (0..n-ay).each do |by|
  #    cy = n-ay-by
  #    if ay*10000 + by*5000 + cy*1000 == y
  #      a,b,c = ay,by,cy
  #    end
  #  end
  #end
  #"#{a} #{b} #{c}"
end

def combination(n, y)
  (0..n).map do |ay|
    (0..n-ay).map do |by|
      (0..n-ay-by).map do |cy|
        if ay * 10000 + by * 5000 + cy * 1000 == y
          a, b, c = ay , by, cy
        end
      end
    end
  end
end


#test

puts otoshidama(9, 45000) == [[0, 9, 0], [1, 7, 0], [2, 5, 0], [3, 3, 0], [4, 0, 5], [4, 1, 0]]
puts otoshidama(10, 10000) == [[0, 0, 10], [0, 1, 5], [0, 2, 0], [1, 0, 0]]
puts otoshidama(20, 196000) == "-1 -1 -1"
puts otoshidama(0, 5000) == nil
puts otoshidama(1, 2*10**7) == "-1 -1 -1"
puts otoshidama(1, 2*11**7) == nil
#puts otoshidama(2000, 1000) == "-1 -1 -1"
puts otoshidama(2001, 10000000) == nil
puts otoshidama(2, 900) == nil
puts otoshidama(1, 1000) == [[0, 0, 1]]
puts otoshidama("a", "a") == nil
puts otoshidama("a", 1000) == nil
puts otoshidama(1, "a") == nil

#all true
