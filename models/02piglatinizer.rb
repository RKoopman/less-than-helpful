class PigLatinizer

  def piglatinize(word)

    vowels = [ "a", "e", "i", "o", "u"]
    non_pig_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
    #binding.pry
    if vowels.include?(word.split("").first.downcase)
      # binding.pry
      word << "way"
    elsif vowels.include? word[0]
      word << "ay"
    else
      consonants = ""
      while !vowels.include?(word[0])
        consonants << word[0]
        word = word.split("")[1..-1].join
      end
      word + consonants + "ay"
    end
  end

  def to_pig_latin(string)
    string.split(" ").map do |word|
      piglatinize(word)
    end.join(" ")
  end



end
