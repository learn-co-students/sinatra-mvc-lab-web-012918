class PigLatinizer

  attr_accessor :string

  def initialize
		@string = string

  end

  def piglatinize(word)
		fl_consonants = word.scan(/[bcdfghjklmnpqrstvwxyz]/)


		word.scan(/[aeoui]/)

  end

  def to_pig_latin(words)
    words = words.split(" ")
    words.map do |word|
      piglatinize(word)
    end
    words.join(" ")
  end
end
