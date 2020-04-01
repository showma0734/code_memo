def confirm(*n)
    cards = n
    cards.each do |c|
        c = c.to_i
        unless c >= 1 && c <= 100
            return 
        end
    end 
end

def cardgame(*n)
    cards = n
    alice = 0
    bob = 0
    if confirm(*n)
        until cards.empty? do
            cards.delete(cards.max) if alice += cards.max
            break if cards.empty?
            cards.delete(cards.max) if bob += cards.max
        end
        alice - bob
    end
end



puts cardgame(3,1) == 2
puts cardgame(50,1) == 49
puts cardgame(50,0) == nil
puts cardgame(100,50) == 50
puts cardgame(101,50) == nil
puts cardgame("a",50) == nil