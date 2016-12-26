def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card=rand(1..11)
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input=gets.chomp
end

def end_game(cardtotal)
  puts "Sorry, you hit #{cardtotal}. Thanks for playing!"
end

def initial_round
  card1=deal_card
  cardtotal = card1 + deal_card
  display_card_total(cardtotal)
end

def hit?(cardtotal)
  prompt_user
  input = get_user_input
  if input !='h' && input != 's'
    invalid_command
  end
  if input == 'h'
    cardtotal=cardtotal + deal_card
  end
  return cardtotal
end

def invalid_command
    puts "Please enter a valid command"
end

def display_card_total(cardtotal)
  puts "Your cards add up to #{cardtotal}"
  return cardtotal
end

def runner
  welcome
  cardtotal=initial_round
  until cardtotal > 21
    cardtotal=display_card_total(hit?(cardtotal))
  end
end_game(cardtotal)
end
