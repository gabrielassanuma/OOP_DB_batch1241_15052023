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
end