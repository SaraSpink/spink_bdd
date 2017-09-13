#! usr/bin/env ruby
require_relative ('spink_bdd.rb')

puts "Let's compare two words. Enter your word: "
  userword1 = gets.chomp
puts "now enter a word to compare: "
  userword2 = gets.chomp

new_anagram = Anagram.new(userword1, userword2)

if userword1 == userword2
  puts "These words are not anagrams."
end

if new_anagram.anagram_evaluator() == true
  puts "#{userword1} and #{userword2} are anagrams!"
else
  puts "These words are not anagrams."
end

if new_anagram.palindrome_evaluator() == true
  puts "#{userword1} and #{userword2} are also palindromes."
else
  puts "The words are not palindromes."
end

if new_anagram.antigram_evaluator() == true
  puts "These words are antigrams!"
end
