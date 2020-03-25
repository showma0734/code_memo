https://github.com/showma0734/code_memo/wiki

puts "問0:abcとs"
a = gets.to_i
b,c = gets.chomp.split.map(&:to_i)
s = gets.chomp
puts "#{a+b+c} #{s}"

#-------------------------------------------

puts "問1:責は奇数偶数"
a,b = gets.chomp.split.map(&:to_i)
puts (a*b).even? ? 'Even' : 'Odd'
=begin
if (a*b).even? == true
    puts "Even"
else
    puts "Odd"
end
=end

#-------------------------------------------

puts "問2:3つの1or0"
nums = gets.chomp.split("").map(&:to_i)
puts nums.sum
#num.inject(0){ |cnt,n| cnt += n }

