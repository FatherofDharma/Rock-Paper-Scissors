require('pry')
class RPS
  def initialize()

  end
  def wins?(object, argument)
    @object = object
    @argument = argument
    if @object == "rock" && @argument == "scissors"
       true
    elsif @object == "paper" && @argument == "rock"
      true
    elsif @object == "scissors" && @argument == "paper"
      true
    elsif @object == @argument
      false
    end

  end
end
