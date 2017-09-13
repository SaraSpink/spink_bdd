#! usr/bin/env ruby
class Anagram
  def initialize (firstword, secondword)
    @firstword = firstword
    @secondword = secondword
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
    if @firstword === @secondword
      puts "Not an anagram"
      return false
    else anagram_maker(@firstword) == anagram_maker(@secondword)
      puts "This is an anagram"
      return true
    end
  end

  def palindrome_evaluator
    if @firstword === @secondword
      return false
    else palindrome_maker(@firstword) == palindrome_maker(@secondword)
      puts "This is a palindrome"
      return true
    end
  end

  def antigram_evaluator
    anti1 = @firstword.downcase.gsub(/\s+/, "")
    anti2 = @secondword.downcase.gsub(/\s+/, "")
    
    if (anti1.chars & anti2.chars).empty?
      puts "this is an antigram"
      true
    else
      false
    end

  end
end
