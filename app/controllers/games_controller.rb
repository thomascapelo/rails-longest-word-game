require 'open-uri'

class GamesController < ApplicationController
  def new
    @random = ('A'..'Z').to_a.sample(10).join(' ')
  end

  def score
    @user_answer = params[:try]
    @url_answer = URI.open("https://wagon-dictionary.herokuapp.com/#{@user_answer}").read
    @json = JSON.parse(@url_answer)
    @word = JSON.parse(@url_answer)['word']
    @found = JSON.parse(@url_answer)['found']

    # unless @user_answer.include?(@random)
    #   return "Sorry but #{@user_answer} can't be built out of #{@random}!"
    # elsif

    # end

    # if @user_answer != @random
    #   return "Sorry but #{@user_answer} can't be built out of #{@random}!"
    # elsif @user_answer == @random

    # end
  end
end
