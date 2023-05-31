class HomeController < ApplicationController
    def index
      @selected_numbers = params[:nums_aposta] || []
    end  
end
