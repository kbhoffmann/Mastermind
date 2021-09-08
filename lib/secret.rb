class Secret
  attr_reader :colors, :colors_4
  def initialize(colors)
    @colors = colors
    @colors_4 = []
  end

  def shuffle_4
    if colors_4.count == 4
    else
      4.times do
        @colors_4 << colors.shuffle.pop
      end
    end
     @colors_4
  end

  def shortened
    colors_first_letter = []
    @colors_4.each do |color|
      colors_first_letter << color[0]
    end
    return colors_first_letter
  end
end
