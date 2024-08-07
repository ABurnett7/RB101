

#Create a simple mad-lib program that prompts for a noun, a verb, an adjective, and an adverb and injects those into a story that you create.

def mad_lib_maker()
  words = {} #Haven't used a hash in a while, so wante do see if I could add to it with prompts

  puts "Enter a noun"
  words[:noun] = gets.chomp

  puts "Enter a verb"
  words[:verb] = gets.chomp
  
  puts "Enter an adjective"
  words[:adjective] = gets.chomp
  
  puts "Enter an adverb"
  words[:adverb] = gets.chomp


  sentence_1 = "Do you #{words[:verb]} your #{words[:adjective]} #{words[:noun]} #{words[:adverb]}? That's hilarious!"
  sentence_2 = "The #{words[:adjective]} #{words[:noun]} #{words[:verb]}s #{words[:adverb]} over the lazy dog."
  sentence_3 = "The #{words[:noun]} #{words[:adverb]} #{words[:verb]}s up #{words[:adjective]} Joe's turtle."

  puts [sentence_1, sentence_2, sentence_3].sample

end

mad_lib_maker()
