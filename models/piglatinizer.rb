require 'pry'
class PigLatinizer

  def initialize
  end

  def to_pig_latin(words)
    words.split.map {|word| piglatinize(word)}.join(" ")
  end

  def piglatinize(word)
    if vowel_start?(word)
      word + "way"
    elsif consonant_start?(word)
      (word[1..word.length]) + (word[0] + "ay")
    elsif consonant_cluster_start?(word)
      x = 0
      word.chars.each do |letter|
        # binding.pry
        if consonant_start?(letter)
          x += 1
        elsif vowel_start?(letter)
          break
        end
      end
      (word[x..word.length]) + (word[0..(x-1)] + "ay")
    end
  end

  def vowel_start?(word)
    word[0].scan(/[aeouiAEIOU]/).length != 0
  end

  def consonant_start?(word)
    if word.length == 1
      word[0].scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).length != 0
    else
      word[0].scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).length != 0 && word[1].scan(/[aeouiAEIOU]/).length != 0
    end
  end

  def consonant_cluster_start?(word)
    word[0].scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).length != 0 && word[1].scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).length != 0
  end

end
