backpacks = File.readlines('data.txt').map! { |backpack| backpack.chomp }

total_priorities = backpacks.map { |backpack|
  first_half = backpack.slice(0..backpack.length/2-1)
  second_half = backpack.slice(backpack.length/2..-1)
  match = nil
  first_half.split("").each { |char| match = char if second_half.include? char }
  match == match.downcase ? match.ord - 96 : match.ord - 38
}.sum

p "Total priorities: " + total_priorities.to_s

grouped = backpacks.each_slice(3).to_a
total_badge_priorities = grouped.map { |group|
  priority = nil
  group[0].split("").each do |char|
    if group[1].include?(char) && group[2].include?(char)
      char == char.downcase ? priority = char.ord - 96 : priority = char.ord - 38
      break
    end
  end
  priority
}.sum

p "Total badge priorities: " + total_badge_priorities.to_s