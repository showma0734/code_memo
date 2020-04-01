def confirm(a,b)
    a = a.to_i
    b = b.to_i
    if a >= 1 && a <= 10000 && b >= 1 && b <= 10000
        a
        b
    end
end

def product(a,b)
    if confirm(a,b)
        c = a * b
        c.even? ? "Even" : "Odd"
    end
end


#テスト

puts product("a","a") == nil
puts product(0,0) == nil
puts product(1,2) == "Even"
puts product(3,5) == "Odd"
puts product(10000,10000) == "Even"
puts product(10000,10001) == nil
 
