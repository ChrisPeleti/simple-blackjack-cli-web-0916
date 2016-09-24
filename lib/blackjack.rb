def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rnum=Random.new
  rnum.rand(1..11)
end

def display_card_total(sumnum)
   puts "Your cards add up to #{sumnum}"
   sumnum
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  reply=gets.chomp
end

def end_game(sumnum)
  puts "Sorry, you hit #{sumnum}. Thanks for playing!"
end

def initial_round
  card1=deal_card
  card2=deal_card
  sumnum=card1+card2
  display_card_total(sumnum)
  sumnum

end

def hit?(sumnum)
  prompt_user
  reply=get_user_input
  if reply=="s"

  elsif reply=="h"
    sumnum=deal_card+sumnum
  else
    invalid_command
    prompt_user
  end
  sumnum
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  #until sumnum > 21
    welcome()
    sumnum=initial_round
    until sumnum > 21 do
      sumnum= hit?(sumnum)
      display_card_total(sumnum)
    end
    end_game(sumnum)
end
