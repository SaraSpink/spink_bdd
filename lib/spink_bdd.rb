#! usr/bin/env ruby
class Anagram
  def initialize
  end

  def anagram_maker(word)
    newarray = word.chars
    newarray.sort
  end

  def anagram_evaluator(input1, input2)
    compare = []
    compare.push(input1.downcase)
    compare.push(input2.downcase)

    compare1 = compare.at(0)
    compare2 = compare.at(1)

    if compare1 === compare2
      return false
    elsif compare1 === anagram_maker(compare2)
      return true
    end

  end
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
