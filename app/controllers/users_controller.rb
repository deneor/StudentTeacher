class UsersController < ApplicationController
  def index
      @users = User.all
  end
  
  def show
      @users = User.all
  end
  
  def group_change
      @user=Users.find(params[:id])
      @group=Group.find(user.group_id)
  end

end
