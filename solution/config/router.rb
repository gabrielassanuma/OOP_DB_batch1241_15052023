class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      puts "---------------------"
      puts "what do you wanna do?"
      puts "1 - Show all games"
      puts "2 - Show a game"
      puts "3 - Add a new game"
      puts "4 - Update a game"
      puts "5 - Destroy a game"
      puts "6 - End"
      puts "---------------------"
      choice = gets.chomp.to_i
      if choice == 1
        @controller.index
      elsif choice == 2
        @controller.show
      elsif choice == 3
        @controller.create
      elsif choice == 4
        @controller.update
      elsif choice == 5
        @controller.destroy
      elsif choice == 6
        break
      else
        puts "Invalid option, try again"
      end
    end
    puts "Bye Bye see ya later!"
  end
end