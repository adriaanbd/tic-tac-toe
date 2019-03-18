class Player
  attr_reader :avatar, :name
  def initialize(avatar, name)
    @avatar = avatar.capitalize
    @name = name.capitalize
  end
end
