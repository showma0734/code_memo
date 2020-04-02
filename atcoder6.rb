def valid?(*cards)
    return false unless cards.all?{|obj| obj.is_a?(Integer)}
    return false if cards.any?{|num| num < 1 || num > 100 }
    true
end

def cardgame(*cards)
    return nil unless valid?(*cards)
    alice = 0
    bob = 0
    until cards.empty? do
        cards.delete(cards.max) if alice += cards.max
        break if cards.empty?
        cards.delete(cards.max) if bob += cards.max
    end
    alice - bob
end



puts cardgame(3,1) == 2
puts cardgame(50,1) == 49
puts cardgame(50,0) == nil
puts cardgame(100,50) == 50
puts cardgame(101,50) == nil
puts cardgame("a",50) == nil