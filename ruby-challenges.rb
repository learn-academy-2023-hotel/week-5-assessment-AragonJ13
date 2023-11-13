 # -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.

 # HINT: Google 'ruby get rid of nested arrays'

# us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
# # Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington']
#  # Pseudo code:
#  # created a method named states with the data parameter
# def states (data)
#     # made another variable ordered_states which retrieves all the values from data and uses . fltten to covert nested arrays into one array and use .sort to sort the array in ascending order.
#     ordered_states = data.values.flatten.sort { |a, b| a <=> b }
#     # made another variable all states that equaled ordered_states
#     all_states = ordered_states
# end
# # printed states method and calling us_states to give me my expected output
# puts states(us_states)



# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The  bike has 2 wheels and is going 0 mph.
# # Pseudo code:





# Created a class named Bike that intialized model,wheels,& current_speed
class Bike
    # Intialized model, wheels & current_speed
    def initialize(model, wheels = 2, current_speed = 0)
      @model = model
      @wheels = wheels
      @current_speed = current_speed
    end
    # Made bik_info method that printed out expected output when printed
    def bike_info
      "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph."
    end 
# end   
    # Make my_bike initialize in Bike.new and print my.bike
    my_bike = Bike.new('Mongoose', 2 , 10)
    puts my_bike.bike_info

    # -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.
    
    Expected output example: my_bike.pedal_faster(10) => 10
    Expected output example: my_bike.pedal_faster(18) => 28
    Expected output example: my_bike.brake(5) => 23
    Expected output example: my_bike.brake(25) => 0
    
    # Pseudo code:
    
    
    # 3.
    

    # Pedal_faster method increases the speed by the given amount second 
    def pedal_faster(increase)
    #current_speed += to increase the the bike speed and to_i makes it an integer 
      @current_speed += increase.to_i
      "Pedaled faster by #{increase}."
    end
    
    # brake method decreses the speed by the given amount second 
    def brake(decrease)
    #Thebrake method decrease by subtracting amount from current_speed but using the .max method it makes sure the number doesnt go negative.
    @current_speed = [@current_speed - decrease.to_i, 0].max
    "Pushed brake by #{decrease}. Current speed is now #{@current_speed}."
    end
      
end 
 # Make new varibale the_bike and print results for expected outputs
  the_bike = Bike.new('MyBike')
  puts the_bike.bike_info
  puts the_bike.pedal_faster(10)
  puts the_bike.pedal_faster(18)
  puts the_bike.brake(5)
  puts the_bike.brake(25)
  



    
  
  