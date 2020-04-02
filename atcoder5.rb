def valid?(n,a,b)
    return false unless [n,a,b].all?{|obj| obj.is_a?(Integer)}
    return false if n > 10**4
    return false if a < 1 || a > b
    return false if b > 36
    true
end


def digitsum (n,a,b)
    return nil unless valid?(n,a,b)
    sum = 0
    (1..n).each do |x|
        nsum = 0
        xs = x
        digit = x.to_s.length
        digit.times do #桁数で終了
            nsum += x % 10 #nsumにxを足し、10の余りを取り、1の桁の数を取り出している
            x /= 10 #nを10で割り、10の位を取り出す、2桁だと二週目で0になる
        end
        if nsum >= a && nsum <= b   #桁の和がa以上b以下の値の条件
            sum += xs     #sum(初期値)に当てはまるxsを追加して足していく
        end
    end
    p sum         
end





puts digitsum(20,2,5) == 84
puts digitsum(100,4,16) == 4554
puts digitsum("a","b","c") == nil
puts digitsum(11**4,2,6) == nil
puts digitsum(40,0,20) == nil
puts digitsum(40,1,20) == 820
puts digitsum(40,1,37) == nil
puts digitsum(40,1,36) == 820


