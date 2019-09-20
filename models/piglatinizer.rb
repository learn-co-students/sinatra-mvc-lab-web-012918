require 'pry'

class PigLatinizer
  attr_accessor :text

  def initialize
  end

  def piglatinize(word)
    # @final = ""
    # words.each do |word|
      new_word = ""
      if word.downcase[0,3] == "str" || word.downcase[0,3] == "spr"
        new_word = word[3..-1] + word[0,3] + "ay"
      elsif word.downcase[0,2] == "ch" || word.downcase[0,2] == "sh" || word.downcase[0,2] == "sm" || word.downcase[0,2] == "th" || word.downcase[0,2] == "st" || word.downcase[0,2] == "gl" || word.downcase[0,2] == "wh" || word.downcase[0,2] == "sk" || word.downcase[0,2] == "pl" || word.downcase[0,2] == "pr"
        new_word = word[2..-1] + word[0,2] + "ay"
      elsif word.downcase[0] == "a" || word.downcase[0] == "e" || word.downcase[0] == "i" || word.downcase[0] == "o" || word.downcase[0] == "u"
        new_word = word + "way"
      else
        new_word = word[1..-1] + word[0] + "ay"
      end
      # @final << new_word
      new_word
    # end
  end

  def to_pig_latin(sentence)
    arr = sentence.split(" ").map do |word|
      pigword = piglatinize(word)
    end
    arr.join(" ")
  end
end
