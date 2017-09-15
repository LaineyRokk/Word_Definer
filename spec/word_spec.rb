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

describe("#definition") do
  it("returns an empty arrray at first") do
    example_word = Word.new("arcanum")
    expect(example_word.definition).to(eq([]))
  end
end

describe("#add_definition") do
    it("adds a new definition to the word") do
      example_word = Word.new("love")
      example_definition = Definition.new("secret of secrets")
      example_word.add_definition(example_definition)
      expect(example_word.definitions()).to(eq([example_definition]))
    end
  end

describe("#id") do
  it("assigns and id number that is +1 of the position in the array") do
    example_word = Word.new("arcanum")
    example_word.save()
    expect(example_word.id()).to(ea(1))
  end
end
