def input(n)
    n = n.to_i
    unless n >= 1 && n <= 100
        return nil
    end
    n
end

def kagamimochi(*input)
    mochi = input
    mochi.each do |m|
        m = m.to_i
        unless m >= 1 && m <= 100
            return nil
        end        
    end
    mochi.uniq.length
end


#テスト

puts input(4) == 4
puts input(0) == nil
puts input("a") == nil

puts kagamimochi(10,8,8,6) == 3
puts kagamimochi(100,100,100) == 1
puts kagamimochi(101,100,100) == nil
puts kagamimochi(0) == nil
puts kagamimochi("a") == nil

#全てtrue


