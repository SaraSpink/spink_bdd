require ('rspec')
require ('pry')
require ('spink_bdd')

newanagram = Anagram.new()

describe('#spink_bdd') do
  it ("returns false if two words are exactly the same") do
    expect(Anagram.new("bear", "bear")).to(eq(false))
  end

  it ("takes a word and returns a sorted array") do
    expect(newanagram.anagram_maker("bear")).to(eq(["a", "b", "e", "r"]))
  end

  it ("returns true if two words or phrases contain the same letters and spaces")do
    expect(newanagram.anagram_evaluator("a ruby", "a bury")).to(eq(true))
  end

  it ("accounts for case sensitivity") do
    expect(newanagram.anagram_evaluator("a Dog", "a god")).to(eq(true))
  end
  ############# ORIGINAL TESTS #################
  it ("takes a word and returns the word in reverse") do
    expect(newanagram.palindrome_maker("cat")).to(eq("tac"))
  end

  it ("returns true if two words are the reverse of one another") do
    expect(newanagram.palindrome_evaluator("dog", "god")).to(eq(true))
  end


end
