def confirm(s)
    if s.is_a?(String)
        if s.length >= 1 && s.length <= 10**5
            s
        end
    end
end

def dreamerase(s)
    if confirm(s)
        s = s.gsub(/eraser/,"").gsub(/erase/,"").gsub(/dreamer/,"").gsub(/dream/,"")
        s.length == 0 ? "YES" : "NO"
    end
end

#テスト

puts dreamerase("dreamerase") == "YES"
puts dreamerase("dreamereraser") == "YES"
puts dreamerase("dreamerer") == "NO"
puts dreamerase(1221) == nil
puts dreamerase("1221") == "NO"
puts dreamerase("DREAM") == "NO"
puts dreamerase("") == nil
puts dreamerase("a") == "NO"
puts dreamerase("a"*11**5) == nil
puts dreamerase("a"*10**5) == "NO"

#全てtrue

 

