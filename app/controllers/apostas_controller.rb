class ApostasController < ApplicationController
  def new
    
  end
  
  def create
    numero1 = params[:numero1]
    numero2 = params[:numero2]
    numero3 = params[:numero3]
    
    #adicionar a lógica para salvar a aposta ou processar os números escolhidos
      # FUNÇÃO CONTADORA DA QUANTIDADE DE JOGADAS
      def initialize
        @contador = 0
      end

      # FUNÇÃO APOSTA DOS NÚMEROS DO JOGADOR
      def f_aposta   
        @aposta = []


        3.times do 
          num = gets.to_i
          @aposta << num
        end
        p "Sua aposta é #{@aposta.sort}"
      end


    redirect_to root_path, notice: 'Aposta realizada com sucesso!'
  end
end
