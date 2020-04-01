def confirm(n,y)
    n = n.to_i
    y = y.to_i
    if n >= 1 && n <= 2000 && y >= 1000 && y <= 2*10**7 && y % 1000 == 0
        n
        y   
    end
end

def otoshidama(n,y)
    if confirm(n,y)
        a,b,c = -1,-1,-1
        (0..n).each do |x|
            (0..n-x).each do |z|
                v = n-x-z
                if x*10000 + z*5000 + v*1000 == y
                    a,b,c = x,z,v
                end
            end
        end
        "#{a} #{b} #{c}"
    end
end

#テスト

puts otoshidama(9,45000) == "4 0 5"
puts otoshidama(20,196000) == "-1 -1 -1"
puts otoshidama(0,5000) == nil
puts otoshidama(2000,10000000) == "888 2 1110"
puts otoshidama(2001,10000000) == nil
puts otoshidama(2,900) == nil
puts otoshidama("a","a") == nil

#全てtrue
