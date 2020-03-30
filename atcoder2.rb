def marbles(a,b,c)
    d = [a,b,c]
    
    if d.all?{|x| x.equal?(0) || x.equal?(1) && x.is_a?(Integer)}  
        p d.sum
        #d.inject(0){ |cnt,n| cnt += n }
    else
        nil
    end
end

puts marbles( 1, 0, 1) == 2
puts marbles( 0, 0, 0) == 0
puts marbles( 2, 0, 1) == nil
puts marbles("a" ,"a" ,"a") == nil
puts marbles("a", 0, 1) == nil


