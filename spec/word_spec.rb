require('rspec')
require('word')

describe("Word") do
  before() do
    Word.clear()
  end
end

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

describe(".clear") do
  it("clears all the words from the word_list") do
    word = Word.new("arcanum")
    word.save()
    Word.clear()
    expect(Word.all()).t0(eq([]))
  end
end
