require 'pry'

class PigLatinizer

  def initialize

  end

  def piglatinize(text)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels

    text_check = text.downcase
    if vowels.include?(text_check[0])
      text + 'way'
    elsif consonants.include?(text_check[0]) && consonants.include?(text_check[1]) && consonants.include?(text_check[2])
      text[3..-1] + text[0..2] + 'ay'
    elsif consonants.include?(text_check[0]) && consonants.include?(text_check[1])
      text[2..-1] + text[0..1] + 'ay'
    elsif consonants.include?(text_check[0])
      text[1..-1] + text[0] + 'ay'
    else
      text # return unchanged
    end
  end

  def to_pig_latin(sentence)
    pig_latin_sentence = sentence.split.map { |word| piglatinize(word)  }
    pig_latin_sentence.join(" ")
  end

  def self.all
    @@all
  end

end
