buffer = File.readlines('data.txt')[0].chars

chars_needed = 0

buffer.each_with_index do |_, i|
  group_of_four = [buffer[i], buffer[i + 1], buffer[i + 2], buffer[i + 3]]
  if group_of_four == group_of_four.uniq
    chars_needed = i + 4
    break
  end
end

p "First number of chars needed: " + chars_needed.to_s

chars_needed = 0

buffer.each_with_index do |_, i|
  group_of_fourteen = [buffer[i], buffer[i + 1], buffer[i + 2], buffer[i + 3],
                       buffer[i + 4], buffer[i + 5], buffer[i + 6], buffer[i + 7],
                       buffer[i + 8], buffer[i + 9], buffer[i + 10], buffer[i + 11],
                       buffer[i + 12], buffer[i + 13]]
  if group_of_fourteen == group_of_fourteen.uniq
    chars_needed = i + 14
    break
  end
end

p "Second number of chars needed: " + chars_needed.to_s