#! usr/bin/env ruby
class Anagram
  def initialize (firstword, secondword)
    @firstword = firstword.downcase.gsub(/\s+/, "")
    @secondword = secondword.downcase.gsub(/\s+/, "")
  end

  def anagram_maker(word)
    word.chars.sort
  end

  def palindrome_maker(word)
    word.reverse
  end

  def isword(word)
    if word.scan(/[aeiou]/).count >= 1
      return true
    else
      return false
    end
  end

  def anagram_evaluator
    if @firstword == @secondword
      return false
    end
    
    if anagram_maker(@firstword) == anagram_maker(@secondword)
      # puts "These words are anagrams"
      return true
    else
      return false
    end
  end

  def palindrome_evaluator
    if @firstword == palindrome_maker(@secondword)
      # puts "These words are palindromes"
      return true
    else
      return false
    end
  end

  def antigram_evaluator
    if (@firstword.chars & @secondword.chars).empty?
      # puts "These words are antigrams"
      return true
    else
      return false
    end

  end
end
