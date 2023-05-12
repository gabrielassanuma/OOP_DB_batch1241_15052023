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

  def update
    index
    game_id = @view.ask_user_for("id").to_i
    game = Game.find(game_id)
    game.name = @view.ask_user_for("new name")
    game.genre = @view.ask_user_for("new genre")
    game.address = @view.ask_user_for("new address")
    game.save
    puts "Game info updated:"
    @view.show(game)
  end

  def destroy
    index
    game_id = @view.ask_user_for("id").to_i
    game = Game.find(game_id)
    game.destroy
    index
  end

  def mark_as_played
    index
    game_id = @view.ask_user_for("id").to_i
    game = Game.find(game_id)
    game.played = true
    game.save
    index
  end
end