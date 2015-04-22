class String
  define_method(:scrabble_score_new) do
    word_score = 0
    scrabble_scores = {"A" => 1,"E" => 1,"I" => 1,"O" => 1,"U" => 1,"L" => 1,"N" => 1,"R" => 1,"S" => 1,"T" => 1,"D" => 2,"G" => 2,"B" => 3,"C" => 3,"M" => 3,"P" => 3,"F" => 1,"H" => 1,"V" => 4,"W" => 4,"Y" => 4,"K" => 5,"J" => 8,"X" => 8,"Q" => 10, "Z" => 10}
    letters = self.split("")
    letters.each do |letter|
      letter_score = scrabble_scores.fetch(letter.upcase())
      word_score+=letter_score
    end
    word_score
  end
end
