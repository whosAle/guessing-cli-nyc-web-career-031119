# Code your solution here!
def help
  puts "I accept the following commands:"
  puts "A number between 1 and 6"
  puts "- exit : exits this program"
end

def exit_guessing_game
  puts "Goodbye"
end

def guess(number)
  random_num = rand(1..6)
  if number == random_num
    puts "You guessed the correct number!"
  else
    puts "The computer guessed #{random_num}."
  end
end

def run_guessing_game()
  help
  puts "Guess a number between 1 and 6."
  input = gets.chomp


  while input != "exit"
    if input.to_i
      guess(input)
    else
      puts "Please use valid command."
    end
    puts "Please enter a command:"
    input = gets.chomp
  end
  exit_guessing_game

end
