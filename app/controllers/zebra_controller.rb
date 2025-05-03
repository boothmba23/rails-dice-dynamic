class ZebraController < ApplicationController 
  def home 

    render({:template =>"game_templates/homepage"}) 
  end 

def first 
  @first_die = rand(1..6)
  @second_die = rand(1..6)
  sum = @first_die + @second_die
	
  @outcome = "You rolled a #{@first_die} and a #{@second_die} for a total of #{sum}."

  render({:template =>"game_templates/first_page"}) 
  end 

  def second 
    @first_die = rand (1..10) 
    @second_die = rand(1..10)
    sum = @first_die + @second_die 
  
  @outcome = "You rolled a #{@first_die} and a #{@second_die} for a total of #{sum}." 
  
   
    render({:template =>"game_templates/second_page"}) 
  end 

  def third 
    @die = rand(1..20)
	
    @outcome = "You rolled a #{@die}."
    render({:template =>"game_templates/third_page"}) 
  end 

  def fourth 
    @first_die = rand(1..4)
   @second_die = rand(1..4)
    @third_die = rand(1..4)
   @fourth_die = rand(1..4)
   @fifth_die = rand(1..4)
   sum = @first_die + @second_die + @third_die + @fourth_die
    
    @outcome = "You rolled a #{@first_die}, a #{@second_die}, a #{@third_die}, and a #{@fourth_die} for a total of #{sum}."

   render({:template =>"game_templates/fourth_page"}) 
  end 

  def flexible  
  @num_dice = params.fetch("number_of_dice").to_i

  @sides = params.fetch("how_many_sides").to_i

  @rolls = []

  @num_dice.times do
    die = rand(1..@sides)

    @rolls.push(die)
  end

  render(:template => "game_templates/flexible")
end

end
