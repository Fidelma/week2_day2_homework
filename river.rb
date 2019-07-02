class River

  attr_reader :name, :fish_in_river

  def initialize(name, fish_in_river)
    @name = name
    @fish_in_river = fish_in_river
  end

  def fish_count
    return @fish_in_river.length
  end

  def lose_fish(fish)
    @fish_in_river.delete(fish)
  end

end
