# write hello world
word1 = "Hello"
word2 = "world"
puts "#{word1}, #{word2}!"

# replace a section of a string
puts "lalasomethinglla".gsub "la","LA"

# find index of a word in string
thing = "Hello, Ruby."
puts thing.index "Ruby"

# print your name 10 times
10.times {puts 'Your name'}

# Successively print out sentance numbers 1 to 10
(1..10).to_a.each { |i|
  puts "This is sentance #{i}"
}
