# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

# Add comments to each line to explain the code.

# This varibale variable is an array of votes from people about thier favorite taco
taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']

# This new variable is counting votes. Takes a hash with the value of 0 and for evry vote its adding 1 vote and its all lower casing all the votes so that it isnt missing any and are counted togther.
totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
  result[vote.downcase] += 1
  result
end

# This will print out the total count for each taco type
p totals
# output:{"fish taco"=>9, "california burrito"=>4, "tacos al pastor"=>3, "carnitas tacos"=>4, "tacos de barbacoa"=>2}