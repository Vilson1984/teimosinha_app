class HomeController < ApplicationController
  def index
    target_array
    random_array_compara

    def initialize
      @contador = 0 
    end
    #@target_array = params[:nums_array] || []
    #@target_array = params[:nums_array]&.map(&:to_i) || []
    #@results = []
    #@contador = 0
   # while @target_array != @random_array
   #   @random_array = (1..10).to_a.sample(3)
   #   @results << @random_array
   # end


  # loop do 
  #  @contador += 1
  #  @random_array = (1..10).to_a.sample(3)
  #  @results << @random_array
  #  
  #  if @target_array == @random_array
  #    break
  #  end
  # end

  end

  def target_array
    @target_array = [1, 2, 3]
    #@nums_array = params[:nums_array].split(",")
  end




  def random_array_compara
    @results = []
    @contador = 0
    loop do 
        
        @contador += 1
        @random_array = (1..10).to_a.sample(3)
        @results << @random_array
        
        if @target_array == @random_array
          break
        end
       end
  end


end