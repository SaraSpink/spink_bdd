#! usr/bin/env ruby
require_relative ('spink_bdd.rb')

newanagram = Anagram.new()

puts "Let's compare two words. Enter your word: "
  firstword = gets.chomp
puts "now enter a word to compare: "
  secondword = gets.chomp

return newanagram.anagram_evaluator(firstword, secondword)

  # if compare1 === compare2
  #   puts "Not an anagram"
  #   return false
  # elsif (anagram_maker(compare1)) == (anagram_maker(compare2)) && (palindrome_maker(compare1)) != (palindrome_maker(compare2))
  #   puts "This is an anagram"
  #   return true
  # elsif anagram_maker(compare1) == anagram_maker(compare2) && palindrome_maker(compare1) == palindrome_maker(compare2)
  #   puts "This is a palindrome"
  #   return true
  # end
