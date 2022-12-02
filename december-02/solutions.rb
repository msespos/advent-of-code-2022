rounds = File.readlines('data.txt').map! { |round| round.chomp }
first_total_score = 0
rounds.each do |round|
  if round[0] == "A" && round[2] == "X"
    first_total_score += 4
  elsif round[0] == "A" && round[2] == "Y"
    first_total_score += 8
  elsif round[0] == "A" && round[2] == "Z"
    first_total_score += 3
  elsif round[0] == "B" && round[2] == "X"
    first_total_score += 1
  elsif round[0] == "B" && round[2] == "Y"
    first_total_score += 5
  elsif round[0] == "B" && round[2] == "Z"
    first_total_score += 9
  elsif round[0] == "C" && round[2] == "X"
    first_total_score += 7
  elsif round[0] == "C" && round[2] == "Y"
    first_total_score += 2
  elsif round[0] == "C" && round[2] == "Z"
    first_total_score += 6
  end
end
p "First total score: " + first_total_score.to_s

second_total_score = 0
rounds.each do |round|
  if round[0] == "A" && round[2] == "X"
    second_total_score += 3
  elsif round[0] == "A" && round[2] == "Y"
    second_total_score += 4
  elsif round[0] == "A" && round[2] == "Z"
    second_total_score += 8
  elsif round[0] == "B" && round[2] == "X"
    second_total_score += 1
  elsif round[0] == "B" && round[2] == "Y"
    second_total_score += 5
  elsif round[0] == "B" && round[2] == "Z"
    second_total_score += 9
  elsif round[0] == "C" && round[2] == "X"
    second_total_score += 2
  elsif round[0] == "C" && round[2] == "Y"
    second_total_score += 6
  elsif round[0] == "C" && round[2] == "Z"
    second_total_score += 7
  end
end

p "Second total score: " + second_total_score.to_s
