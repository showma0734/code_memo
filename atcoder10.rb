def confirm(t2,x2,y2)
    ds = [t2,x2,y2]
    ds.each do |d|
        unless d.is_a?(Integer)
            return
        end
    end
end

def traveling(t2,x2,y2)
    if confirm(t2,x2,y2)
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
end



puts traveling(2,100,100) == "NO"
puts traveling(6,1,1) == "YES"
puts traveling("a","a","a") == nil
