def digitsum (n,a,b)
    n = n.to_i
    a = a.to_i
    b = b.to_i
    if n <= 10 ** 4 && a >= 1 && a <= b && b <= 36
        sum = 0
        (1..n).each do |x|
            nsum = 0
            xs = x
            digit = x.to_s.length
            digit.times do
                nsum += x % 10
                x /= 10
            end
            if nsum >= a && nsum <= b
                sum += xs
            end
        end
        sum     
    else
    nil
    end
end





puts digitsum(20,2,5) == 84
puts digitsum(100,4,16) == 4554
puts digitsum("a","b","c") == nil
puts digitsum(11**4,2,6) == nil
puts digitsum(40,0,20) == nil
puts digitsum(40,1,20) == 820
puts digitsum(40,1,37) == nil
puts digitsum(40,1,36) == 820


