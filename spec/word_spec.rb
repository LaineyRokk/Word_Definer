require('rspec')
require('word')

describe(".all") do
  it("is empty at first") do
    expect(Word.all()).to(eq([]))
  end
end

describe("#save") do
  it("saves a word to the word list") do
    word = Word.new("arcanum")
    word.save()
    expect(Word.all()).to(eq([word]))
  end
end
