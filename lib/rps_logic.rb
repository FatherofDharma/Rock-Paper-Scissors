#!/usr/bin/ruby

require('pry')


class RPS
  def initialize()



  end
  def wins?(object, argument)
    print "Choose rock, paper, or scissors: "
    @input = (gets.chomp).downcase
    @object = object
    @argument = argument
    win = "#{@input} Wins!"
    lose = "#{@input} Loses!"
    if @input == "rock" && @argument == "scissors"
      puts win
     true
    elsif @input == "rock" && @argument == "paper"
      puts lose
      false
    elsif @input == "paper" && @argument == "rock"
      puts win
      true
    elsif @input == "paper" && @argument == "scissors"
      puts lose
      false
    elsif @input == "scissors" && @argument == "paper"
      puts win
      true
    elsif @input == "scissors" && @argument == "rock"
      puts lose
      false
    elsif @input == @argument
      puts "It's a tie!"
      false
    end

  end
end

game = RPS.new()
game.wins?("scissors", "rock")
