def coins(a,b,c,x)
    a = a.to_i
    b = b.to_i
    c = c.to_i
    x = x.to_i
    ds = [a,b,c]
    if ds.sum >= 1
        if a >= 0 && a <= 50 && b >= 0 && b <= 50 && c >= 0 && c <= 50 && x >= 50 && x <= 20000 && x % 50 == 0
            sum = 0
            (0..a).each do |ay|
                (0..b).each do |by|
                    (0..c).each do |cy|
                        sum += 1 if ay * 500 + by * 100 + cy * 50 == x
                    end
                end
            end     
            sum   
        else
            nil
        end
    else
        nil
    end
end

#テスト
puts coins(2,2,2,100) == 2
puts coins(5,1,0,150) == 0
puts coins("a","a","a", "aa") == nil
puts coins(1,5,55,150) == nil
puts coins(5,5,5,20050) == nil


