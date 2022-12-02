rounds = File.readlines('data.txt').map! { |round| round.chomp }

first_total_score = 0
FIRST_SCORE_MAP = { "A X" => 4, "A Y" => 8, "A Z" => 3,
                    "B X" => 1, "B Y" => 5, "B Z" => 9,
                    "C X" => 7, "C Y" => 2, "C Z" => 6 }
rounds.each { |round| first_total_score += FIRST_SCORE_MAP[round] }
p "First total score: " + first_total_score.to_s

second_total_score = 0
SECOND_SCORE_MAP = { "A X" => 3, "A Y" => 4, "A Z" => 8,
                     "B X" => 1, "B Y" => 5, "B Z" => 9,
                     "C X" => 2, "C Y" => 6, "C Z" => 7 }
rounds.each { |round| second_total_score += SECOND_SCORE_MAP[round] }
p "Second total score: " + second_total_score.to_s
