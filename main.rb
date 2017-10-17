require './game'
require './player'
require './question'

p1 = Player.new('Peter')
p2 = Player.new('Zoey')
question = Question.new
game = Game.new(p1, p2, question)
game.startGame