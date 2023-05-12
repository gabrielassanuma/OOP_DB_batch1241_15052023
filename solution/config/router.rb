class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      puts "---------------------"
      puts "what do you wanna do?"
      puts "1 - Show all games"
      puts "2 - Add a new game"
      puts "3 - Show a game"
      puts "4 - Update a game"
      puts "5 - Destroy a game"
      puts "6 - End"
      puts "---------------------"
      choice = gets.chomp.to_i
      if choice == 1
        @controller.index
      elsif choice == 6
        break
      else
        puts "Invalid option, try again"
      end
    end
    puts "Bye Bye see ya later!"
  end
end