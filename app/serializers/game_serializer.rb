class GameSerializer < ActiveModel::Serializer
  attributes :id, :state

  def self.serialize(game)
    binding.pry
    game[:state] = ["","","","","","","","",""]
  end
end
