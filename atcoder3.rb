def input(num)
    num = num.to_i
    unless num >= 1 && num <= 200
        return nil
    end
    num
end

def division(*input)
    d = input
    d.each do |x| 
        x = x.to_i
        unless x >= 1 && x <= 10**9 
            return nil
        end
    end
    sum = 0
    while d.all?(&:even?) do
        sum = sum.succ
        d = d.map{ |n| n/2 }
    end
    sum
end

#テスト
puts input(3) == 3
puts input(0) == nil
puts input(1) == 1
puts input(201) == nil
puts input(200) == 200
puts input("a") == nil

puts division(8,12,40) == 2
puts division(5,6,8,10) == 0
puts division("a","a") == nil
puts division(11**9) == nil
puts division(10**9) == 9
puts division(1) == 0
puts division(0) == nil



