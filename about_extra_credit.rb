# EXTRA CREDIT:
#
# Create a program that will play the Greed Game.
# Rules for the game are in GREED_RULES.TXT.
#
# You already have a DiceSet class and score function you can use.
# Write a player class and a Game class to complete the project.  This
# is a free form assignment, so approach it however you desire.

require '../koans/about_dice_project'
require '../koans/about_scoring_project'


class Player
  attr_reader :player_name, :score, :dices

  def initialize(player_name, score = 0)
    @player_name = player_name
    @score = score
    @dices = DiceSet.new
  end

  def roll(n)
    @dices.roll(n)
  end

  def to_count_score(score)
    @score += score
  end
end

class Game
  
end