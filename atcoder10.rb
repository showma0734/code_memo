def input(n)
    n = n.to_i
    unless n >= 1 && n <= 10**5
        return ""
    end
    n
end

def traveling(t2,x2,y2)
    t1,x1,y1 = 0,0,0
    t = t2 - t1
    d = (x2 - x1).abs + (y2 - y1).abs
    if d <= t && (t - d).even?
        result = "YES"
        t1 = t2
        x1 = x2
        y1 = y2
    else
        result = "NO" 
    end
    p result
end



puts input(1) == 1
puts input(0) == ""
puts input(10**5) == 100000
puts input(11**5) == ""
puts input("a") == ""

puts traveling(2,100,100) == "NO"
puts traveling(6,1,1) == "YES"
