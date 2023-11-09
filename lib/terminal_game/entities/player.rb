class Player
  attr_accessor :hp, :char_type

  def initialize hitpoints, char_class
    @hp = hitpoints
    @char_type = char_class
  end
end
