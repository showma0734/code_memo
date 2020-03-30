puts "問0:abcとs"

def abcs(a,b,c,s)
    d = a.to_i + b.to_i + c.to_i
    if d >= 1 && d <= 3000 && 1 <= s.size && s.size <= 100
        "#{d} #{s}"
    else
        ""
    end
end

#a = gets.to_i
#b,c = gets.chomp.split.map(&:to_i)
#s = gets.chomp

puts abcs("aa", "aa", "aa", "aa") == ""
puts abcs(1, 2, 3, "test") == "6 test"
puts abcs(1000, 1000, 1000, "aa") == "3000 aa"
puts abcs(1000, 1000, 1001, "aa") == ""
puts abcs(1, 1, 1, "a" * 100) == "3 #{"a" * 100}"






