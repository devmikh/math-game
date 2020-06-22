require "./game"

game = Game.new

# Main logic
while true do
  current_player = game.current_player
  opposite_player = game.opposite_player
  player1 = game.player1
  player2 = game.player2
  question = game.question

  # Display question for the current player
  puts "#{current_player}: #{question.definition}"

  # Get user input and store in a variable
  answer = gets.chomp.to_i

  # Display the appropriate response based on user's answer
  if answer == question.answer
    puts "#{current_player}: YES! You are correct."
  else
    puts "#{current_player}: Seriously? No!"

    # If answer is not correct, reduce life
    current_player.lose_life
  end

  # Display total lives for both players
  puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"

  # If a player loses his last life, display the winner, which is the opposite player
  if game.current_player.lives == 0
    
    puts "#{opposite_player} wins with a score of #{opposite_player.lives}/3"

    puts "----- GAME OVER -----"
    puts "Good bye!"

    # Break out of the loop and exit
    break
    
  end

  # If no player has lost yet, start next turn
  game.next_turn
end