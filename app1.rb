#require 'bundler'
#Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

#binding.pry

 player1 = Player.new("Josiane",10)
 player2 = Player.new("José",10)

 p "Voici l'état de nos joueurs :"
 player1.show_state 
 player2.show_state 

p "Passons à la phase d'attaque :"
player1.attacks (player2)
player2.attacks (player1)

p "Voici l'état de nos joueurs :"
player1.show_state 
player2.show_state 

p "Passons à la phase d'attaque :"
player1.attacks (player2)
player2.attacks (player1)

p "Voici l'état de nos joueurs :"
player1.show_state 
player2.show_state 

p "Passons à la phase d'attaque :"
player1.attacks (player2)
player2.attacks (player1)


p "Voici l'état de nos joueurs :"
player1.show_state 
player2.show_state 

p "Passons à la phase d'attaque :"
player1.attacks (player2)
player2.attacks (player1)


