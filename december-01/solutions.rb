data = File.readlines('data.txt').map! { |datum| datum.chomp.to_i }
sums = []
data.chunk { |datum| datum == 0 }.each { |_, array| sums << array.sum }
p "Top elf's calories: " + sums.max.to_s
sorted_sums = sums.sort.reverse
top_three = sorted_sums[0] + sorted_sums[1] + sorted_sums[2]
p "Top three elves' calories: " + top_three.to_s
