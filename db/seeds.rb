# puts 'EMPTY THE MONGODB DATABASE'
# Mongoid.master.collections.reject { |c| c.name =~ /^system/}.each(&:drop)

Problem.delete_all

Problem.create!(#_id: 1,
                difficulty: "easy",
                title: "The truth",
                instructions: "Here's a hint: true equals true.",
                code: "assert_equal true, __",
                approved: true)

Problem.create!(#_id: 1,
                difficulty: "easy",
                title: "Hello World",
                instructions: "",
                code: "assert_equal 'HELLO WORLD', 'hello world'.__",
                approved: true)

Problem.create!(#_id: 2,
                difficulty: "easy",
                title: "Nil Values",
                instructions: "Enter in a boolean value for what #nil? will return.",
                code: "[0, '', 'chunky_bacon'].each { |v| assert_equal v.nil?, __ }",
                approved: true)

Problem.create!(#_id: 3,
                difficulty: "easy",
                title: "Reverse",
                instructions: "What happens when you apply reverse? Hint: don't forget to quote your strings!",
                code: "assert_equal 'nocab yknuhc'.reverse, __",
                approved: true)

Problem.create!(#_id: 4,
                difficulty: "easy",
                title: "FizzBuzz",
                instructions: "If a number is divisible by 3, return \"Fizz\". If a number is divisible by 5, return \"Buzz\". If a number
                               is divisible by 3 and 5, return \"FizzBuzz\"",
                approved: true,
                code: <<-eos
def fizzbuzz(x)
  __
end

assert_equal fizzbuzz(3), "Fizz"
assert_equal fizzbuzz(50), "Buzz"
assert_equal fizzbuzz(15), "FizzBuzz"
assert_equal fizzbuzz(5175), "FizzBuzz"
eos
               )

Problem.create!(#_id: 5,
                difficulty: "easy",
                title: "Map",
                instructions: "How would you create an array that contains the squares of all elements in a range?",
                code: "assert_equal [1, 4, 9, 16], (1..4).map { __ }",
                approved: true)
                
Problem.create!(#_id: 6,
                difficulty: "easy",
                title: "Reverse each word",
                instructions: "Write a method that takes a sentence and returns it with each word reversed in place.",
                approved: true,
                code: <<-code_block
def reverse_each_word(sentence)
 __
end

assert_equal "olleH ,ereht dna woh era ?uoy", reverse_each_word("Hello there, and how are you?")
code_block
               )

Problem.create!(#_id: 7,
                  difficulty: "easy",
                  title: "Your favorite and mine, Fibonacci!",
                  instructions: "Write a method that handles Fibonacci sequences. Have it return the nth item in the Fibonacci sequence.  Hint: The first item in the sequence is 0.",
                  approved: true,
                  code: <<-code_block
 def fibo_finder(n)
   __
 end

 assert_equal 0, fibo_finder(0)
 assert_equal 1, fibo_finder(1)
 assert_equal 3, fibo_finder(4)
 assert_equal 13, fibo_finder(7)
 assert_equal 55, fibo_finder(10)
 code_block
                 )

Problem.create!(#_id: 8,
               difficulty: 'medium',
               title: "Pigs fly;  wait, no they don't.",
               instructions: 'Can you make a method return a differect value after a "return" is called?',
               approved: true,
               code: <<-eos
def do_pigs_fly?
  return true
  __
end

assert_equal do_pigs_fly?, false
               eos
               )

Problem.create!(#_id: 9,
                  difficulty: "medium",
                  title: "Happy numbers",
                  instructions: "Happy numbers are positive integers that follow a particular formula: take each individual digit,
                                 square it, and then sum the squares to get a new number. Repeat with the new number and eventually,
                                 you might get to a number whose squared sum is 1. This is a happy number. An unhappy number (or
                                 sad number) is one that loops endlessly. Write a function that determines if a number is happy or not.",
                  approved: true,
                  code: <<-code_block
 __

 assert_equal happy_number?(7), true
 assert_equal happy_number?(986543210), true
 assert_equal happy_number?(2), false
 assert_equal happy_number?(3), false
 code_block
                 )
