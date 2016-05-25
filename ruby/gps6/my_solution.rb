class VirusPredictor

  # Initializes the class and establishes instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Runs the combined methods of predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # Takes in arguments of population_density, population, and state
  # Depending on population density, it calculates a rounded number of deaths
  # Prints string with state and number of deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    percentage = 0.4 if @population_density >= 200
    percentage = 0.3 if @population_density >= 150
    percentage = 0.2 if @population_density >= 100
    percentage = 0.1 if @population_density >= 50
    percentage = 0.05 if @population_density < 50
    
    number_of_deaths = (@population * percentage).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  
  # Takes in arguments of population_density and state
  # Depending on population_density, speed is increased
  # prints continued string of how many months it will take to spread across the state
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    speed += 0.5 if @population_density >= 200
    speed += 1 if @population_density >= 150
    speed += 1.5 if @population_density >= 100
    speed += 2 if @population_density >= 50      
    speed += 2.5 if @population_density < 49
    

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each {|state, population|
  state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  state.virus_effects
  }