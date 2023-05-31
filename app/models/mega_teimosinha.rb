class ApostasController < ApplicationController
    def new
        @jogo = MegaTeimosinha.new
    end

    def create
        @jogo = MegaTeimosinha.new
        @jogo.f_aposta
        @jogo.f_compara_jogo
    end
end