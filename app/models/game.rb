class Game < ActiveRecord::Base
  serialize :state, Array  # transforming a json string to array (JSON.parse(test2))
end
