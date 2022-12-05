stack1 = ["R", "N", "F", "V", "L", "J", "S", "M"]
stack2 = ["P", "N", "D", "Z", "F", "J", "W", "H"]
stack3 = ["W", "R", "C", "D", "G"]
stack4 = ["N", "B", "S"]
stack5 = ["M", "Z", "W", "P", "C", "B", "F", "N"]
stack6 = ["P", "R", "M", "W"]
stack7 = ["R", "T", "N", "G", "L", "S", "W"]
stack8 = ["Q", "T", "H", "F", "N", "B", "V"]
stack9 = ["L", "M", "H", "Z", "N", "F"]

STRING_TO_VAR = { "stack1" => stack1, "stack2" => stack2, "stack3" => stack3,
                  "stack4" => stack4, "stack5" => stack5, "stack6" => stack6,
                  "stack7" => stack7, "stack8" => stack8, "stack9" => stack9 }

directions_maybe_four = File.readlines('data.txt').map do |direction|
  direction.chomp.delete("move from to").split("").map(&:to_i)
end

correct_directions = directions_maybe_four.map do |direction|
  if direction.length == 4
    [(direction[0].to_s + direction[1].to_s).to_i, direction[2], direction[3]]
 else
  direction
 end
end

def move(number_to_move, from_stack, to_stack)
  to_move = STRING_TO_VAR["stack" + from_stack.to_s].pop(number_to_move).reverse
  STRING_TO_VAR["stack" + to_stack.to_s].push(to_move).flatten!
end

correct_directions.each { |direction| move(direction[0], direction[1], direction[2]) }

# this gives the answer for part one
# to get the part two answer, just remove .reverse from the end of line 28 and rerun!
p "Top Crates: " + stack1.last + stack2.last + stack3.last +
                                   stack4.last + stack5.last + stack6.last +
                                   stack7.last + stack8.last + stack9.last
