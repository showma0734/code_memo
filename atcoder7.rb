def confirm(*n)
    mochi = n
    mochi.each do |m|
        m = m.to_i
        unless m >= 1 && m <= 100
            return            
        end
    end
end

def kagamimochi(*n)
    mochi = n
    if confirm(*n)
        mochi.uniq.length
    end
end


#テスト

puts kagamimochi(10,8,8,6) == 3
puts kagamimochi(100,100,100) == 1
puts kagamimochi(101,100,100) == nil
puts kagamimochi(0) == nil
puts kagamimochi("a") == nil

#全てtrue


