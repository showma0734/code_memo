def input(n)
    n = n.to_i
    unless n >= 1 && n <= 100
        return nil
    end
    n
end

def cardgame(*input)
    cards = input
    alice = 0
    bob = 0
    cards.each do |c|
        c = c.to_i
        unless c >= 1 && c <= 100
            return nil
        end
    end
    until cards.empty? do
        cards.delete(cards.max) if alice += cards.max
        break if cards.empty?
        cards.delete(cards.max) if bob += cards.max
    end
    alice - bob
end

puts input(1) == 1
puts input(0) == nil
puts input(100) == 100
puts input(101) == nil
puts input("a") == nil

puts cardgame(3,1) == 2
puts cardgame(50,1) == 49
puts cardgame(50,0) == nil
puts cardgame(100,50) == 50
puts cardgame(101,50) == nil
puts cardgame("a",50) == nil