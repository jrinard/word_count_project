class String
  define_method(:word_count) do |find_word|
    output_array = []
    counter = 0
    sentence_array = self.downcase().split(" ")
    sentence_array.each() do |word|
      if word.include?(find_word.downcase())
         counter = counter + 1
      end
    end
    counter
  end
end
