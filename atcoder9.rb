def dreamerase(s)
    if s.is_a?(String)
        if s.length >= 1 && s.length <= 10**5
            s = s.gsub(/eraser/,"").gsub(/erase/,"").gsub(/dreamer/,"").gsub(/dream/,"")
            s.length == 0 ? "YES" : "NO"
        else
            ""
        end
    else
        ""
    end
end

#テスト

puts dreamerase("dreamerase") == "YES"
puts dreamerase("dreamereraser") == "YES"
puts dreamerase("dreamerer") == "NO"
puts dreamerase(1221) == ""
puts dreamerase("1221") == "NO"
puts dreamerase("DREAM") == "NO"
puts dreamerase("") == ""
puts dreamerase("a") == "NO"
puts dreamerase("a"*11**5) == ""
puts dreamerase("a"*10**5) == "NO"

#全てtrue

 

