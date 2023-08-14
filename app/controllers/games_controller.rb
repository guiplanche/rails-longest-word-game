require "json"
require "open-uri"

class GamesController < ApplicationController
  def home
  end

  def new
    @letters = generate_random_letters
  end

  def generate_random_letters
    chars = ('A'..'Z').to_a
    chars.sample(10)
  end

  def score
    word = params[:word].upcase.split('')
    letters = params[:letters].split(' ')

    # 1. checker que toutes les letters sont inclues dans la propal
    included_word = word.all? do |letter|
      word.count(letter) <= letters.count(letter)
    end

    # 2. checker que ton mot est un mot anglais
    url = "https://wagon-dictionary.herokuapp.com/#{params[:word]}"
    results = URI.open(url).read
    results_parse = JSON.parse(results)

    english_word = results_parse["found"]

    # checker que 1. et 2. sont vrais
    if 
    if english_word == true &&


  end

end
