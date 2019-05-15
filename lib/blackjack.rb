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
  return gets.chomp
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

def hit?(card_total)
  prompt_user
  choice = get_user_input
  if choice == 's'
    end_game(card_total)
  elsif choice == 'h'
    deal_card
    card_total = card_total + deal_card
  else
    invalid_command
  end
  return card_total
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
  initial_round
  hit?
end
