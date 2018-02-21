class PigLatinizer

  def vowel_start(word)
    word[0].scan(/[aeouiAEIOU]/).length != 0
  end

  def vowel_cluster(word)
    vowel_start(word) && word[1].scan(/[aeouiAEIOU]/).length != 0
  end

  def cluster_start(word)
    word[0].scan(/[aeouiAEIOU]/).length == 0 && word[1].scan(/[aeouiAEIOU]/).length == 0
  end

  def big_cluster(word)
    cluster_start(word) && word[2].scan(/[aeouiAEIOU]/).length == 0
  end

  def mixed_start(word)
    word[0].scan(/[aeouiAEIOU]/).length != 0 && word[1].scan(/[aeouiAEIOU]/).length == 0
  end

  def piglatinize(word)
    if word.length == 1
      if vowel_start(word)
        sliced_letter = word.slice!(0)
        word + sliced_letter + "way"
      else
        sliced_letter = word.slice!(0)
        word + sliced_letter + "ay"
      end
    else
      if big_cluster(word)
        sliced_letters = word.slice!(0..2)
        word + sliced_letters + "ay"
      elsif cluster_start(word)
        sliced_letters = word.slice!(0..1)
        word + sliced_letters + "ay"
      elsif mixed_start(word)
        word + "way"
      elsif vowel_cluster(word)
        word + "way"
      elsif vowel_start(word)
        sliced_letter = word.slice!(0)
        word + sliced_letter + "way"
      else
        sliced_letter = word.slice!(0)
        word + sliced_letter + "ay"
      end
    end
  end

  def to_pig_latin(text)
    words = text.split(" ")
    words.map {|word| self.piglatinize(word)}.join(" ")
  end

end
