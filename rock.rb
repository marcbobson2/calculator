#first user chooses and validate


game_hash={'r'=>'Rock','p'=>'Paper', 's'=>'Scissors'}
options=game_hash.keys

loop do
user_choice=""
play_again=""

loop do
  puts "Enter rock, paper or scissors (r,p,s)"
  user_choice=gets.chomp
  if game_hash.has_key?(user_choice.downcase) then
    break
  end
end

#now the computer needs to pick his choice, use random

computer_choice=options[rand(3)]

user_full_choice=game_hash.fetch(user_choice.downcase)
computer_full_choice=game_hash.fetch(computer_choice.downcase)

puts "You chose #{user_full_choice} and the computer chose #{computer_full_choice}"



def pick_a_winner(user_choice,computer_choice)
  winner=""
  human="Human wins. "
  computer="Computer wins. "
  if user_choice==computer_choice then
    winner="its a tie!"
  else
    case user_choice 
    when "s"
      if computer_choice=='r' then
        winner=computer + "Rock smashes scissors"
      else
        winner=human + "Scissors cuts paper"
      end
    when "r"
      if computer_choice=='p' then
        winner=computer + "Paper covers rock!"
      else
        winner=human + "Rock smashes scissors"
      end
    when "p"
      if computer_choice=='r' then
        winner=human + "Paper covers rock!"
      else
        winner=computer + "Scissors cuts paper!"
      end
      end
    end
winner
end #end def

puts pick_a_winner user_choice.downcase, computer_choice

loop do
  puts "Do you want to play again? (y/n)"
  play_again=gets.chomp
  if play_again.downcase=='y' || play_again.downcase=='n' then
    break
  end #endif
end #end validation loop

if play_again.downcase=='n' then
  break #breaks us out of full loop
end

end




















  