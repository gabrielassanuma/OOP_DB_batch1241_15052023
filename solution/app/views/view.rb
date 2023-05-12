class View
  def list_all(list)
    list.each do |item|
      puts "#{item.id}- #{item.name}"
    end
  end 
end
