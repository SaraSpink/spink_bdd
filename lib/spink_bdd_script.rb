#! usr/bin/env ruby
require_relative ('spink_bdd.rb')

puts "Let's compare two words. Enter your word: "
  userword1 = gets.chomp
puts "now enter a word to compare: "
  userword2 = gets.chomp

newanagram = Anagram.new(userword1, userword2)



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
