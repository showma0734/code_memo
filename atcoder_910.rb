puts "問9:白昼夢"
s = gets.chomp
ts = ["dream", "dreamer", "erase", "eraser"]

until s.empty? do 
    reduced = false
    ts.map do |t|
        if s[-t.size,t.size] == t
            s = s[0..-t.size - 1]
            reduced = true
            break
        end
    end

    unless reduced
        puts "NO"
        exit 0
    end
end

puts "YES"

#------------------------------------------------
=begin
def daydream(s)
    s = s.gsub(/dream/,"").gsub(/dreamer/,"").gsub(/erase/,"").gsub(/eraser/,"")
    puts s.length == 0 ? "YES" : "NO"
end

s = gets.chomp
daydream(s)
=end


#---------------------------------------------

puts "問10:traveling"


def traveling(t2,x2,y2)
    t1,x1,y1 = 0,0,0
    t = t2 - t1
    d = (x2 - x1).abs + (y2 - y1).abs
    if d <= t && (t - d).even?
        t1 = t2
        x1 = x2
        y1 = y2
    else
        puts "NO"
        exit 
    end
end

number = gets.to_i
number.times do
    t2,x2,y2 = gets.chomp.split(" ").map(&:to_i)
    traveling(t2,x2,y2)
end
puts "YES"



