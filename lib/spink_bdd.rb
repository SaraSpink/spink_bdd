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
    compare = []
    compare.push(@firstword.downcase)
    compare.push(@secondword.downcase)

    compare1 = compare.at(0)
    compare2 = compare.at(1)

    if compare1 === compare2
      puts "Not an anagram"
      return false
    else anagram_maker(compare1) == anagram_maker(compare2)
      puts "This is an anagram"
      return true
    end
  end

  def palindrome_evaluator
    compare = []
    compare.push(@firstword.downcase)
    compare.push(@secondword.downcase)

    compare1 = compare.at(0)
    compare2 = compare.at(1)

    if compare1 === compare2
      return false
    else palindrome_maker(compare1) == palindrome_maker(compare2)
      puts "This is a palindrome"
      return true
    end
  end

  def antigram_evaluator
    anti1 = @firstword.downcase.gsub(/\s+/, "")
    anti2 = @secondword.downcase.gsub(/\s+/, "")
    compare1 = anti1.chars.sort
    compare2 = anti2.chars.sort
    if anti1 == anti2
      return false
    else
      return true
    end

  end
  #   compare = []
  #   compare.push(@firstword.downcase)
  #   compare.push(@secondword.downcase)
  #
  #   compare1 = compare.at(0)
  #   compare2 = compare.at(1)
  #
  #
  #
  #   if compare1 === compare2
  #     return false
  #   else anagram_maker(compare1) != anagram_maker(compare2)
  #     puts "This is an antigram"
  #     return true
  #   end
  # end

end


################ ORIGINAL CODE ##################
# class Anagram
#   def initialize
#   end
#
#   def anagram_maker(word)
#     word.reverse()
#   end
#
#   def anagram_array(word1, word2)
#     compare = []
#     compare.push(word1.downcase)
#     compare.push(word2.downcase)
#
#     compare1 = compare.at(0)
#     compare2 = compare.at(1)
#
#     if compare1 === compare2
#       return false
#     elsif compare1 === anagram_maker(compare2)
#       return true
#     end
#   end
# end
