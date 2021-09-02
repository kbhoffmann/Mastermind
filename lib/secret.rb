class Secret
  attr_reader :colors_4, :colors
  def initialize(colors)
    @colors = colors
    @colors_4 = []
  end
  def shuffle_4
    4.times do
      @colors_4 << colors.shuffle.pop
    end
    return @colors_4
  end
end
