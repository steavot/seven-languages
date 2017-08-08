puts "print array of 16 numbers four at a time using just each"
a = [12,13,23,21, 47,34,22,18, 53,45,97,98, 50,4,32,2]

a.each { |i|
  place = a.index(i)
  if (place + 1) % 4 == 0 then
    puts "#{a[place-3]}".ljust(8) +
         "#{a[place-2]}".ljust(8) +
         "#{a[place-1]}".ljust(8) +
         "#{a[place]}".ljust(8)
  end
}
# this has the problem that the combination of .each and .index can't deal with
# duplicates...

puts "\n now do the same with each_slice in Enumerable"
a.each_slice(4) { |sli|
  puts "#{sli[0]}".ljust(8) +
       "#{sli[1]}".ljust(8) +
       "#{sli[2]}".ljust(8) +
       "#{sli[3]}".ljust(8)
}

puts "\n\n"

# Upadating tree so it can take in a nested hash to define tree structure in
# stead of a nested arrray of objects.
require "./steavot_tree.rb"
require "./tree_def.rb"
include OurTrees

ruby_tree = Tree.new(TREE_1)

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts

puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}

puts "\n\n Simple grep printing lines that of a file that contain a word"
lines = IO.readlines("./bat_out_of_hell_lyrics.txt")
lines.each { |line|
  if /bat out of hell/.match(line) then
    puts "#{lines.index(line)+1}\t#{line}"
  end
}