def valid?(a,b,c,x)
    return false unless [a,b,c,x].all?{|obj| obj.is_a?(Integer)}
    return false if a < 0 || a > 50
    return false if b < 0 || b > 50
    return false if c < 0 || c > 50
    return false if x < 50 || x > 20000
    return false if x % 50 > 0
    return false if [a,b,c].sum < 1
    true
end
    
def coins(a,b,c,x)
    return nil unless valid?(a,b,c,x) 
    combination(a,b,c).select{|total| total == x}.size      
endexit

def combination(a,b,c)
    (0..a).map do |ay|
        (0..b).map do |by|
            (0..c).map do |cy|
                ay * 500 + by * 100 + cy * 50
            end
        end
    end.flatten
end

#sum = 0
#a.downto(0){|ay|
#    b.downto(0){|by|
#        c.downto(0){|cy|
#            sum += 1 if ay * 500 + by * 100 + cy * 50 == x
#        }
#    }
#}
        
#for ay in 0..a
#    for by in 0..b
#        for cy in 0..c
#            sum += 1 if ay * 500 + by * 100 + cy * 50 == x
#        end
#    end
#end    
#(0..a).each do |ay|
#    (0..b).each do |by|
#        (0..c).each do |cy|
#            sum += 1 if ay * 500 + by * 100 + cy * 50 == x                    
#        end
#    end
#end     



#テスト
puts coins(2,2,2,100) == 2
puts coins(5,1,0,150) == 0
puts coins("a","a","a", "aa") == nil
puts coins(1,5,55,150) == nil
puts coins(5,5,5,20050) == nil



