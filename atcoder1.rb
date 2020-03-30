def product(a,b)
    a = a.to_i
    b = b.to_i
    if a >= 1 && a <= 10000 && b >= 1 && b <= 10000
        c = a * b
        c.even? ? "Even" : "Odd"
    else
        ""
    end
end


#a,b = gets.chomp.split.map(&:to_i)
puts product("a","a") == ""
puts product(0,0) == ""
puts product(1,2) == "Even"
puts product(3,5) == "Odd"
puts product(10000,10000) == "Even"
puts product(10000,10001) == ""
 
