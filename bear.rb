class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def number_of_fish_in_stomach
    return @stomach.length
  end

  # def eat_fish(name, river)
  #   for fish in river.fish_in_river
  #     if fish.name == name
  #       @stomach.push(fish)
  #     end
  #   end
  # end

  def eat_fish_from_river(fish, river)
    @stomach.push(fish)
    river.lose_fish(fish)
  end

  def roar
    return "roar"
  end
  
end
