class View
  def list_all(list)
    list.each do |item|
      puts "#{item.id}- #{item.name}"
    end
  end 

  def show(item)
    puts "Game detail's:"
    puts "id: #{item.id}"
    puts "name: #{item.name}"
    puts "genre: #{item.genre}"
    puts "address: #{item.address}"
  end

end
