class String
  define_method(:scrabble) do
    letters = self.split("")
    total_score = 0
    letters.each() do |letter|
      scrabble_key = { "e" => 1 }
      score = scrabble_key.fetch(letter)
      total_score += score
    end
    total_score
  end
end
