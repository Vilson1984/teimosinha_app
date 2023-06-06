class HomeController < ApplicationController
  def index
    f_aposta
    f_sorteio

    if @aposta_jogador.present?
      @contador = 0
      @jogadas = []
      while @jogadas.none? { |jogada| jogada == @aposta_jogador } do
        f_sorteio
        @jogadas << @resultados.first
        @contador += 1
      end
    end
  end

  def f_aposta
    @aposta_jogador = params[:nums_array]&.map(&:to_i) || []
  end

  def f_sorteio
    @resultados = [] 
    @resultados << (1..10).to_a.sample(3)
  end
end