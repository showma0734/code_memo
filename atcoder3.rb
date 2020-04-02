def confirm(*n)
    ds = *n
    ds.each do |d|
        d = d.to_i
        unless d >= 1 && d <= 10**9 
            return 
        end
    end
end

def division(*n)
    ds = *n
    if confirm(*n)
        $sum = 0
        #while ds.all?(&:even?) do
        #    sum = sum.succ
        #    ds = ds.map{ |d| d/2 }
        #end
        result(ds)
        p $sum
    end
end

def result(arr)
    return if arr.any?{|a| a.odd?} #any?..全ての要素が偽ならfalse,真があればtrue
    $sum += 1
    result(arr.map{|a| a/ 2})
end



#テスト

puts division(8,12,40) == 2
puts division(5,6,8,10) == 0
puts division("a","a") == nil
puts division(11**9) == nil
puts division(10**9) == 9
puts division(1) == 0
puts division(0) == nil



