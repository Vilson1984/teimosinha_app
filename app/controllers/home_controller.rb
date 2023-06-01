class HomeController < ApplicationController
    def index
      @aposta = params[:nums_aposta] || []

      sorteio
    end  

    def sorteio
      @bilhete_premiado = []
      
      # SORTEIO NÚMEROS DO PC
        @numeros_disp = (1..10)
        @bilhete_premiado << @numeros_disp.sort.sample(3)
    end

 
end
