def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  random = rand(1..11)
  return random
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first = deal_card
  second = deal_card
  display_card_total(first + second)
  return first + second
end

def hit?(currentcard_total)
  prompt_user
  input = get_user_input
    if input == 's'
      currentcard_total = currentcard_total
      return currentcard_total
      puts currentcard_total
    elsif input == 'h'
      new_card = deal_card
      currentcard_total = currentcard_total + new_card
      return currentcard_total
      puts currentcard_total
    else
      invalid_command
    end
  return currentcard_total
  puts currentcard_total
end

def invalid_command
  puts "Please enter a valid command."
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  #until total > 21
  hit?(10)
  #end
  #end_game(currentcard_total)
end
