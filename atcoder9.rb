def valid?(s)
  return false unless s.is_a?(String)
  return false if s.length < 1 || s.length > 10**5
  true
end

def dreamerase(s)
  return nil unless valid?(s)
  words = ["eraser", "erase", "dreamer", "dream"]
  words.each {|word| s.gsub!(word, "")}
  s.length == 0 ? "YES" : "NO"
end

#def order_find(s)
#  s = s.gsub(/eraser/,"").gsub(/erase/,"").gsub(/dreamer/,"").gsub(/dream/,"")
#end


#test

puts dreamerase("dreamerase") == "YES"
puts dreamerase("erasedream") == "YES"
puts dreamerase("dreamereraser") == "YES"
puts dreamerase("eraserdreamer") == "YES"
puts dreamerase("dreamereraser") == "YES"
puts dreamerase("erasedreamer") == "YES"
puts dreamerase("dreameraser") == "YES"
puts dreamerase("eraserdream") == "YES"
puts dreamerase("dreamerdream") == "YES"
puts dreamerase("erasererase") == "YES"
puts dreamerase("dreamdreamer") == "YES"
puts dreamerase("eraseeraser") == "YES"
puts dreamerase("dreamerer") == "NO"
puts dreamerase("dreemerase") == "NO"
puts dreamerase("DREAM") == "NO"
puts dreamerase("") == nil
puts dreamerase("a") == "NO"
puts dreamerase("a"*11**5) == nil
puts dreamerase("a"*10**5) == "NO"
puts dreamerase(0123) == nil
puts dreamerase("1221") == "NO"

#all true

 

