class Game < ActiveRecord::Base
	
  serialize :state, Array

end


### Serializing non-mappable objects
##Now, the created_at and updated_at attributes are excluded from our JSON output, but we're still seeing errors concerning the state attribute. If you look closely, you'll notice that it's currently being serialized as a string, "[\"X\", \"O\", \"X\", \"\", \"\", \"\", \"\", \"\", \"\"]", instead of as an array, ["X", "O", "X", "", "", "", "", "", ""].