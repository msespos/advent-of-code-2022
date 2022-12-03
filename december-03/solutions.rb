backpacks = File.readlines('data.txt').map! { |backpack| backpack.chomp }
total_priorities = 0
backpacks.each do |backpack|
  s1 = backpack.slice(0..backpack.length/2-1)
  s2 = backpack.slice(backpack.length/2..-1)
  match = nil
  s1.split("").each { |char| match = char if s2.include? char }
  if match == match.downcase
    match = match.ord - 96
  else
    match = match.ord - 38
  end
  total_priorities += match
end

p "Total priorities: " + total_priorities.to_s

total_badge_priorities = 0
grouped = backpacks.each_slice(3).to_a
grouped.each do |group|
  match = nil
  group[0].split("").each do |char|
    if group[1].include?(char) && group[2].include?(char)
      match = char
      if match == match.downcase
        priority = match.ord - 96
      else
        priority = match.ord - 38
      end
      total_badge_priorities += priority
      break
    end
  end
end

p "Total badge priorities: " + total_badge_priorities.to_s