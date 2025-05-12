class GameController < ApplicationController
  def new
    # be used to display a new random grid and a form.
    # The form will be submitted (with POST) to the score action
    # create a new @letters instance variable storing these random letters from the alphabet
    charset = ("a".."z").to_a
    @letters = Array.new(10) {charset.sample}
  end

  def score
    # raise
    @word = params[:word]
    @letters = params[:letters].split
    # @letters = ['a','b','o','k']
    # @word = 'book'
    @valid_number_of_letters = build_from_letters?(@word, @letters)
    # raise

    # check if @word is composed by @letters
    # as well as if @word is valid english word
      # use api
    # if both yes, puts congratulations!

  end

  def build_from_letters?(word, letters)
    # word.chars = ['b','o','o','k']
    word.chars.all? do |char|
      word.count(char) <= letters.count(char)
    end
  end

end
