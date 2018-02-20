require 'pry'
class PigLatinizer
  attr_reader :text

  def piglatinize(text)
    vowels = ["a", "e", "i", "o", "u"]
    array = text.split
    text_area = []
    text = array.map do |word|
      # binding.pry
      if vowels.include?(word[0].downcase)
        word<<"way"
        # binding.pry
        text_area << word
      else
        split_words = word.split /([aeiou].*)/
        text_area << split_words.reverse.join << "ay"
      end
      joined = text_area.join
      # binding.pry
    end
    text[0]
  end

  def to_pig_latin(text)
    vowels = ["a", "e", "i", "o", "u"]
    array = text.split
    text_area = []
    text = array.map do |word|
      # binding.pry
      if vowels.include?(word[0].downcase)
        word<<"way"
        # binding.pry
        text_area << word
      else
        split_words = word.split /([aeiou].*)/
        joined =  split_words.reverse.join << "ay"
        text_area << joined
      end
      joined = text_area.join
      # binding.pry
    end
    text_area.join(" ")
  end


end
