class View
  def list_all(list)
    list.each do |item|
      puts "[#{item.played ? "X" : " " }]#{item.id}- #{item.name}"
    end
  end 

  def show(item)
    puts "Game detail's:"
    puts "id: #{item.id}"
    puts "name: #{item.name}"
    puts "genre: #{item.genre}"
    puts "address: #{item.address}"
  end

  def ask_user_for(stuff)
    puts "Enter game's #{stuff}:"
    gets.chomp
  end

end
