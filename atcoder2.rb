def marbles(a,b,c)
    d = [a,b,c]
    d.each do |x|
        unless ((x == 1 || x == 0 && x.is_a?(Integer)))
            return nil
        end
    end
    p d.sum
    #d.inject(0){ |cnt,n| cnt += n }git
end

puts marbles( 1, 0, 1) == 2
puts marbles( 0, 0, 0) == 0
puts marbles( 2, 0, 1) == nil
puts marbles("a" ,"a" ,"a") == nil
puts marbles("a", 0, 1) == nil




