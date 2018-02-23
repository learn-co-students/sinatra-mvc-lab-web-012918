class PigLatinizer
  # attr_accessor :text
  #
  # def initialize(text)
  #   @text = text
  # end

  def piglatinize(text)
    vowel_index = text.index(/[AEIOU|aeiou]/)
    if vowel_index == 0
      text + "way"
    else
      sliced = text.slice!(0...vowel_index)
      text + sliced + "ay"
    end
  end

  def to_pig_latin(text)
    text_arr = text.split
    text_arr.map do |str|
      vowel_index = str.index(/[AEIOU|aeiou]/)
      if vowel_index == 0
        str + "way"
      else
        sliced = str.slice!(0...vowel_index)
        str + sliced + "ay"
      end
    end.join(" ")
  end


end
