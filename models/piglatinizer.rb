require 'pry'
class PigLatinizer
  attr_accessor :string


  def piglatinize(word)
    # binding.pry
    vowels = ["a", "e", "i", "o", "u"]
    consonants = ("a".."z").to_a - vowels

    # binding.pry
    if vowels.include?(word[0].downcase)
      return word + "way"
    elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase) && consonants.include?(word[2].downcase)
      letter1 = word[0]
      letter2 = word[1]
      letter3 = word[2]
      return word[3..-1] + letter1 + letter2 + letter3 + "ay"
    elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase)
      letter1 = word[0]
      letter2 = word[1]
      # binding.pry
      return word[2..-1] + letter1 + letter2 + "ay"
    else
      letter = word[0]
      # binding.pry
      return word[1..-1] + letter + "ay"
    end
  end

  def to_pig_latin(sentence)
    p = PigLatinizer.new
    sentence.split.map do |word|
      p.piglatinize(word)
    end.join(" ")
  end
end
