class HomeController < ApplicationController
  def index
    @contador = 0
    @target_array = [1, 2, 3]
    #@target_array = params[:nums_array] || []
    #@target_array = params[:nums_array]&.map(&:to_i) || []
    @results = []
    
   # while @target_array != @random_array
   #   @random_array = (1..10).to_a.sample(3)
   #   @results << @random_array
   # end
 
   loop do 
    @contador += 1
    @random_array = (1..10).sort.to_a.sample(3)
    @results << @random_array
    
    if @target_array == @random_array
      break
    end
   end

  end
end