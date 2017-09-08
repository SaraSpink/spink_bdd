require ('rspec')
require ('pry')
require ('spink_bdd')



describe('#spink_bdd') do
  a = Anagram.new("bear", "bear")
  it ("returns false if two words are exactly the same") do
    expect(a.anagram_evaluator()).to(eq(false))
  end

  it ("takes a word and returns a sorted array") do
    expect(a.anagram_maker("bear")).to(eq(["a", "b", "e", "r"]))
  end

  b = Anagram.new("a ruby", "a bury")
  it ("returns true if two words or phrases contain the same letters and spaces")do
    expect(b.anagram_evaluator()).to(eq(true))
  end

  c = Anagram.new("a dog", "A God")
  it ("accounts for case sensitivity") do
    expect(c.anagram_evaluator()).to(eq(true))
  end

  it ("takes a word and returns the word in reverse") do
    expect(a.palindrome_maker("cat")).to(eq("tac"))
  end

  d = Anagram.new("live", "evil")
  it ("returns true if two words are the reverse of one another") do
    expect(d.palindrome_evaluator()).to(eq(true))
  end


end
