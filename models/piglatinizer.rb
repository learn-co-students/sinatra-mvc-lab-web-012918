class PigLatinizer

  def piglatinize(word)
    vowels = word.scan(/[aeouiAEOUI]/)
    if !vowels.empty?
      first_vowel = vowels[0]
      if word.index(first_vowel) != 0
        new_word = word[word.index(first_vowel)..-1] + word[0...word.index(first_vowel)] + "ay"
      else
        new_word = word + "way"
      end
    end
  end

  def to_pig_latin(text)
    pigs = text.split(" ")
    pigs.map do |word|
      piglatinize(word)
    end.join(" ")
  end

end
