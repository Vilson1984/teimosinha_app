class HomeController < ApplicationController
  def index
    f_bet
    f_raffle

    if @bet_player.present?
      @count = 0
      @plays = []
      @result_play = nil

      while @result_play.nil? do
        f_raffle
        @plays << @results.first
        @count += 1

        @plays.each_with_index do |play, index|
          if play.sort == @bet_player.sort
            @result_play = index + 1
            break
          end
        end
      end
    end
  end

  def f_bet
    @bet_player = params[:nums_array]&.map(&:to_i) || []
  end

  def f_raffle
    @results = [] 
    @results << (1..10).to_a.sample(3)
  end
end
