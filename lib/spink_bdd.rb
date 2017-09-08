#! usr/bin/env ruby
class Anagram
  def initialize ()
  end

  def anagram_maker(word)
    word.reverse()
  end

  def anagram_array(word1, word2)
    compare = []
    compare.push(word1)
    compare.push(word2)

    compare1 = compare.at(0)
    compare2 = compare.at(1)

    if compare1 === compare2
      return false
    else
      return true
    end
  end



end
