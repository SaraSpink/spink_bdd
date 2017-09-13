require ('rspec')
require ('pry')
require ('spink_bdd')



describe ('Anagram#anagram_maker') do
  it ("takes a word and returns a sorted array") do
    newanagram = Anagram.new("bear", "bear")
    expect(newanagram.anagram_maker("bear")).to(eq(["a", "b", "e", "r"]))
  end
end

describe ('Anagram#isword') do
  it ("returns false if a word is not a word (has no vowels)") do
    newanagram = Anagram.new("word1", "word2")
    expect(newanagram.isword("xkcd")).to(eq(false))
  end
end

describe('Anagram#anagram_evaluator') do
  it ("returns false if two words are exactly the same") do
    newanagram = Anagram.new("bear", "bear")
    expect(newanagram.anagram_evaluator()).to(eq(false))
  end

  it ("returns true if two words or phrases contain the same letters and spaces")do
    newanagram = Anagram.new("a ruby", "a bury")
    expect(newanagram.anagram_evaluator()).to(eq(true))
  end

  it ("accounts for case sensitivity") do
    newanagram = Anagram.new("a dog", "A God")
    expect(newanagram.anagram_evaluator()).to(eq(true))
  end

  it ("returns true if two words are the reverse of one another") do
    newanagram = Anagram.new("live", "evil")
    expect(newanagram.palindrome_evaluator()).to(eq(true))
  end
end

describe('Anagram#palindrome_evaluator') do
  it ("takes a word and returns the word in reverse") do
    newanagram = Anagram.new("cat", "tac")
    expect(newanagram.palindrome_maker("cat")).to(eq("tac"))
  end

  it ("takes a word or group of words and returns the reverse") do
    newanagram = Anagram.new("live", "e vil")
    expect(newanagram.palindrome_evaluator()).to(eq(true))
  end
end

describe('Anagram#antigram_evaluator') do
  it ("is an antigram if no letters match") do
    newanagram = Anagram.new("Baby", "duck")
    expect(newanagram.antigram_evaluator).to(eq(true))
  end

  it ("accounts for multiple words being antigrams and returns true if the words are antigrams") do
    newanagram = Anagram.new("fabled", "too much")
    expect(newanagram.antigram_evaluator).to(eq(true))
  end
end
