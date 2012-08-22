class MyString < String
  def exclude? pattern
    puts not(include? pattern)
  end

  def occurance word
    i = 0
    word_index = -1
    while not index(word, word_index + 1).nil?
      word_index = index(word, word_index + 1)
      i += 1
    end
    puts "Total occurance of #{word} is #{i}"
  end
end