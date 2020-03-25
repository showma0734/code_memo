puts "問6:カードゲーム"
n = gets.to_i
as = gets.strip.split.map(&:to_i)
alice = 0
bob = 0
until as.empty? do
    as.delete(as.max) if alice += as.max
    break if as.empty?
    as.delete(as.max) if bob += as.max
end
puts (alice - bob)

#---------------------------------------------------

puts "問7:鏡餅"
n = gets.to_i
ns = n.times.map { gets.to_i }
puts ns.uniq.length

#---------------------------------------------------

puts "問8:お年玉"
n,y = gets.chomp.split.map(&:to_i)
a,b,c = -1, -1, -1
(0..n).each do |x|
    (0..(n-x)).each do |z|
        v = n - x - z
        if x * 10000 + z * 5000 + v * 1000 == y
            a,b,c = x,z,v
        end
    end
end

print a,b,c

