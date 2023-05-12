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

  def create
    name = @view.ask_user_for("name")
    genre = @view.ask_user_for("genre")
    address = @view.ask_user_for("address")
    game = Game.create(name: name, genre: genre, address: address)
    puts "#{game.name} created!"
    @view.show(game)
  end


end