def valid?(s)
    return false unless s.is_a?(String)
    return false if s.length < 1 || s.length > 10**5
    true
end

def dreamerase(s)
    return nil unless valid?(s)
    s = s.gsub(/eraser/,"").gsub(/erase/,"").gsub(/dreamer/,"").gsub(/dream/,"")
    s.length == 0 ? "YES" : "NO"
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

 

