class Word
  attr_accesor(:word, :definition)
  @@word_list = []

  def initialize(word, definition)
    @word = word
    @definition = []
  end

  def self.all()
    @@word_list
  end


end
