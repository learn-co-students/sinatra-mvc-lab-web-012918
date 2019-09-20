class PigLatinizer

  attr_accessor :string

  def initialize
		@string = string

  end

  def piglatinize(word)

    first=word.slice(0)
    second=word.slice(1)
    third = word.slice(2)
     if /^[^aeiou\W]/i.match(word) == nil
       word + "way"
     elsif /^[^aeiou\W]/i.match(first) && /^[^aeiou\W]/i.match(second) && /^[^aeiou\W]/i.match(third)
       word.slice(3..word.length-1) + first + second + third + "ay"

     elsif /^[^aeiou\W]/i.match(first) && /^[^aeiou\W]/i.match(second)
       word.slice(2..word.length-1) + first + second + "ay"
     else
       first = word.slice!(0)
       word + first + "ay"
     end
  end

  def to_pig_latin(words)
    words = words.split(" ")
    words.map! do |word|
      piglatinize(word)
    end
    words.join(" ")
  end
end
