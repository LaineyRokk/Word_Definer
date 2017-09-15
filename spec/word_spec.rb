require('rspec')
require('word')

describe(".all") do
  it("is empty at first") do
    expect(Word.all()).to(eq([]))
  end
end
