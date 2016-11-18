class String
  define_method(:word_count) do |find_word|
    word_array = []
    counter = 0
    sentence_array = self.split(" ")
    sentence_array.each() do |word|
      if word.include?(find_word)
        counter = counter + 1
      end
    end
    counter
  end
end
