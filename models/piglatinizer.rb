class PigLatinizer
  attr_accessor :word

  def break_apart_phrase(phrase)
    @phrase_arr = phrase.split(" ")
  end

  def to_pig_latin(phrase)
    break_apart_phrase(phrase).map { |word| piglatinize(word) }.join(" ")
  end

  def piglatinize (word)
    @word_arr = word.split(//)
    check_first_letters
  end

  def check_first_letters
    if ["a","e","o","u","i"].include?(@word_arr[0].downcase)
      @pig_word = @word_arr.join+'way'
    elsif ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","x","y","z"].include?(@word_arr[0].downcase) && ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","x","y","z"].include?(@word_arr[1].downcase) && ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","x","y","z"].include?(@word_arr[2].downcase)
      @pig_word_end = @word_arr.shift[0]+ @word_arr.shift[0] + @word_arr.shift[0]+'ay'
      @pig_word_begin = @word_arr.join
      @pig_word=  @pig_word_begin + @pig_word_end
    elsif ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","x","y","z"].include?(@word_arr[0].downcase) && ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","x","y","z"].include?(@word_arr[1].downcase)
      @pig_word_end = @word_arr.shift[0] + @word_arr.shift[0]+'ay'
      @pig_word_begin = @word_arr.join
      @pig_word=  @pig_word_begin + @pig_word_end
    else
      @pig_word_end = @word_arr.shift[0]+'ay'
      @pig_word_begin = @word_arr.join
      @pig_word= @pig_word_begin +@pig_word_end
    end
  end
end
