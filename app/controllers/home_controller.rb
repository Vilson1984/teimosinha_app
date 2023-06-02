class HomeController < ApplicationController
  def index
    @target_array = params[:nums_array]&.map(&:to_i) || []
    @results = []
    
    until @results.last == @target_array || @results.length >= 1000
      random_array = (1..10).to_a.sample(3)
      @results << random_array
    end
  end
end