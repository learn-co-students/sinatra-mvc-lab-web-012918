class PigLatinizer
  attr_reader :text

  def initialize
    @text = ""
  end

  def piglatinize(text)
    consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    vowels = "aeiouAEIOU"
    words = text.split(" ")
    words.collect! do |word|
      if consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      "#{word[3..-1]}" + "#{word[0..2]}" + "ay"
      elsif consonants.include?(word[0]) && consonants.include?(word[1])
        "#{word[2..-1]}" + "#{word[0..1]}" + "ay"
      elsif consonants.include?(word[0])
        "#{word[1..-1]}" + "#{word[0]}" + "ay"
      elsif vowels.include?(word[0])
        "#{word}" + "way"
      else
        "#{word[1..-1]}" + "#{word[0]}" + "ay"
      end
    end
    words.join(" ")
  end

  def to_pig_latin(text)
    consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    vowels = "aeiouAEIOU"
    words = text.split(" ")
    words.collect! do |word|
      if consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      "#{word[3..-1]}" + "#{word[0..2]}" + "ay"
      elsif consonants.include?(word[0]) && consonants.include?(word[1])
        "#{word[2..-1]}" + "#{word[0..1]}" + "ay"
      elsif consonants.include?(word[0])
        "#{word[1..-1]}" + "#{word[0]}" + "ay"
      elsif vowels.include?(word[0])
        "#{word}" + "way"
      else
        "#{word[1..-1]}" + "#{word[0]}" + "ay"
      end
    end
    words.join(" ")
  end

end
