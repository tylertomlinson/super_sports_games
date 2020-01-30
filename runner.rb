require './lib/games'
require './lib/event'

# Create a program that allows a User to interact with the Games through the command line
#   Upon starting the program, the User should enter the year for the games
#   The User can then create new Events and get a Summary of the Events

#need to have new event with two arguments name and age.
#figure out how to add the new event into Games. probably shovel
  puts "You are about to create a Event that will be simulated" + "\n\n"
  puts "The results of your event will be recorded" + "\n\n"
  puts "Enter the year of your Event"
  user_year = gets.chomp
  games = Games.new(user_year)

  puts "Enter the the name of your Event"
  user_event_name = gets.chomp

#can refactor this do use string interp and loop
  puts "Enter the ages of your athletes. There will be 5 athletes." + "\n\n"
  puts "Enter the age of the first athlete"
  age1= gets.chomp.to_i
  puts "Enter the age of the second athlete"
  age2= gets.chomp.to_i
  puts "Enter the age of the third athlete"
  age3= gets.chomp.to_i
  puts "Enter the age of the fourth athlete"
  age4= gets.chomp.to_i
  puts "Enter the age of the fifth athlete"
  age5= gets.chomp.to_i

  ages= [age1, age2, age3, age4, age5]

  events = Event.new(user_event_name, ages)
  games.events << events









#game stats

#need to print summary of game
