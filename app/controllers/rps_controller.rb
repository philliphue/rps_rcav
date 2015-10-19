class RpsController < ApplicationController

  def rock
    @user_move = "Rock"
    @computer_move = ["Rock","Paper","Scissors"].sample

    if @computer_move == "Scissors"
      @result = "won"
    elsif @computer_move == "Paper"
      @result = "lost"
    else
      @result = "tied"
    end

    render("rock.html.erb")
  end

   def paper
    @user_move = "Paper"
    @computer_move = ["Rock","Paper","Scissors"].sample

    if @computer_move == "Scissors"
      @result = "lost"
    elsif @computer_move == "Paper"
      @result = "tied"
    else
      @result = "won"
    end

    render("paper.html.erb")
  end

  def scissors
    @user_move = "Scissors"
    @computer_move = ["Rock","Paper","Scissors"].sample

    if @computer_move == "Scissors"
      @result = "tied"
    elsif @computer_move == "Paper"
      @result = "won"
    else
      @result = "lost"
    end

    render ("scissors.html.erb")
  end

end
