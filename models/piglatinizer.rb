class PigLatinizer
  # attr_accessor :text
  #
  # def initialize (text)
  #   @text = text
  # end

  def to_pig_latin(text)
    array = text.split(" ")
    piglatin = array.map{|word|
        self.piglatinize(word)
    }
    piglatin.join(" ")
  end

  def piglatinize(word)
    array = word.split("")
    period = false
    pig_word = ""
    if array.last == "."
      array.pop
      period = true
    end
    first_vowel_index = array.find_index{|letter| !letter.scan(/[aeouiAEIOU]/).empty?}
    if first_vowel_index==0
      pig_word = word + "way"
    elsif first_vowel_index!=0
      pig_word = word[first_vowel_index...word.length]+ word[0...first_vowel_index] + "ay"
    end
    if period == true
      pig_word = pig_word + "."
    end
    pig_word
  end


end
