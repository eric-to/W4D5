class GoalsController < ApplicationController
  def new
    
  end
  
  def create
    goal = Goal.new(goals_params)
    
    user = User.find(goals_params[:user_id])
    
    if goal
    else
      flash[:errors] = goal.error.full_messages
      redirect_to new_user_goal()
    end
  end
  
  def show
    
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def delete
    
  end
  
  def goals_params
    params.require(:goal).permit(:summary, :user_id, :private, :complete)
  end
  
end