def valid?(n,*cards)
  return false unless n.is_a?(Integer)
  return false if n < 1 || n > 100
  return false unless cards.all?{|obj| obj.is_a?(Integer)}
  return false if cards.any?{|num| num < 1 || num > 100 }
  return false if n != cards.length
  true
end

def cardgame(n,*cards)
  return nil unless valid?(n,*cards)
  alice,bob = 0,0
  cards = cards.sort.reverse
  alice = cards.select.with_index{|num, idx| idx.even? }.sum
  bob = cards.select.with_index{|num, idx| idx.odd? }.sum
  
  #until cards.empty? do
  #  alice += cards.shift unless cards.size == 0
  #  bob += cards.shift unless cards.size == 0
  #end
  p alice - bob
end


# cards.delete(cards.max) if alice += cards.max
# cards.delete(cards.max) if bob += cards.max

#test

puts cardgame(2,3,1) == 2
puts cardgame(3,2,7,4) == 5
puts cardgame(2,50,1) == 49
puts cardgame(2,50,0) == nil
puts cardgame(2,100,50) == 50
puts cardgame(2,101,50) == nil
puts cardgame(2,"a",50) == nil
puts cardgame(1,2) == 2
puts cardgame(0) == nil
puts cardgame(101, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1) == nil
puts cardgame(100, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1) == 0
puts cardgame(2 , 3, 4, 5) == nil

#all true