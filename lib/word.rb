class Word
  attr_reader :
  attr_accesor(:word, :definition)
  @@word_list = []

  def initialize(word, definition)
    @word = word
    @definition = []
    @id = @@word_list.length + 1
  end

  def self.all()
    @@word_list
  end

  def save()
    @@word_list.push(self)
  end

  def self.clear()
    @@word_list = []
  end


end
