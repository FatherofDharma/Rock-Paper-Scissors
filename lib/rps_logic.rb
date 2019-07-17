#!/usr/bin/ruby

require('pry')


class RPS
  def initialize()


  end

  def game
    @condition = ["scissors", "rock", "paper"]

    @user_score = 0
    @comp_score = 0
    @tie_score = 0
    until (@user_score >= 5 || @comp_score >= 5)
      @argument = @condition.sample()
      puts "The current score is You: #{@user_score}, Computer:#{@comp_score}, Ties: #{@tie_score}"
      puts "Choose rock, paper, or scissors: "
      input = gets.chomp
      wins?(input)
    end
    if @comp_score > @user_score
      p "The computer wins, You LOSE! Your score is: #{@user_score}, The computer's score is: #{@comp_score}, and there were #{@tie_score} ties."
    elsif @user_score > @comp_score
      p "You WIN, the computer loses! Your score is: #{@user_score}, The computer's score is: #{@comp_score}, and there were #{@tie_score} ties."
    end
  end

  def wins?(object)
    @input = object
    win = "#{@input} Wins!"
    lose = "#{@input} Loses!"
    if @input == "rock" && @argument == "scissors"
      puts win
      @user_score += 1
    elsif @input == "rock" && @argument == "paper"
      puts lose
      @comp_score += 1
    elsif @input == "paper" && @argument == "rock"
      puts win
      @user_score += 1
    elsif @input == "paper" && @argument == "scissors"
      puts lose
      @comp_score += 1
    elsif @input == "scissors" && @argument == "paper"
      puts win
      @user_score += 1
    elsif @input == "scissors" && @argument == "rock"
      puts "You " + ["Lost", "Died", "Didn't Win"].sample
      @comp_score += 1
    else
      puts "It's a tie!"
      @tie_score += 1
    end
  end
end

game1 = RPS.new()
game1.game()
