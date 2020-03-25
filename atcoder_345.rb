puts "問3:N個の偶数何回割れるか"
num = gets.to_i
nums = gets.chomp.split.map(&:to_i)
sum = 0
while nums.all?(&:even?) do 
    #sum += 1
    sum = sum.succ
    nums = nums.map{ |n| n/2 }
end
puts sum

#------------------------------------------------

puts "問4:硬貨の枚数とx円何通りか"
a,b,c,x = 4.times.map {gets.to_i}
sum = 0
(0..a).each do |an|
    (0..b).each do |bn|
        (0..c).each do |cn|
            sum += 1 if an*500 + bn*100 + cn*50 == x
        end
    end
end

=begin
for num1 in 0..a do
    for num2 in 0..b do
        for num3 in 0..c do
            sum += 1 if num1*500 + num2*100 + num3*50 == x
        end
    end
end
=end

puts sum


            
#-------------------------------------------------


puts "問5:1以上n以下の整数の桁がa以上b以下であるものの総和"
n,a,b = gets.chomp.split.map(&:to_i)

def n_sum(n)
    sum = 0
    while n > 0 do 
        sum += n % 10
        n /= 10
    end
    sum
end

ns = (1..n).map{ |i| [i,n_sum(i)]}
            .select{ |i| a <= i[1] && i[1] <= b }
            .inject(0){ |sum, i| sum + i[0] }
puts ns



