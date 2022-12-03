rounds = File.readlines('data.txt').map! { |round| round.chomp }

FIRST_SCORE_MAP = { "A X" => 4, "A Y" => 8, "A Z" => 3,
                    "B X" => 1, "B Y" => 5, "B Z" => 9,
                    "C X" => 7, "C Y" => 2, "C Z" => 6 }
p "First total score: " + rounds.map { |round| FIRST_SCORE_MAP[round] }.sum.to_s

SECOND_SCORE_MAP = { "A X" => 3, "A Y" => 4, "A Z" => 8,
                     "B X" => 1, "B Y" => 5, "B Z" => 9,
                     "C X" => 2, "C Y" => 6, "C Z" => 7 }
p "Second total score: " + rounds.map { |round| SECOND_SCORE_MAP[round] }.sum.to_s
