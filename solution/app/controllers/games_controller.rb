require_relative "../views/view"
require_relative "../models/game"

class GamesController

  def initialize
    @view = View.new
  end

  def index
    games = Game.all
    @view.list_all(games)
  end

  def show
    index
    puts "Enter game's ID:"
    game_id = gets.chomp.to_i
    game = Game.find(game_id)
    @view.show(game)
  end

  
end