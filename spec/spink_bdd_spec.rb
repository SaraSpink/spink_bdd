require ('rspec')
require ('pry')
require ('spink_bdd')

newanagram = Anagram.new()

describe('#spink_bdd') do
  it ("takes a word and returns the word in reverse") do
    expect(newanagram.anagram_maker("cat")).to(eq("tac"))
  end

  it ("returns false if two words are not anagrams") do
    expect(newanagram.anagram_array("dog", "dog")).to(eq(false))
  end

  it ("returns true if two words are the reverse of one another") do
    expect(newanagram.anagram_array("dog", "god")).to(eq(true))
  end

  it ("accounts for case sensitivity") do
    expect(newanagram.anagram_array("Dog", "god")).to(eq(true))
  end
end
