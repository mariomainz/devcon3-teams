class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :set_user, only: [:show, :edit, :update]
  
  def index
    @users = User.all
  end

  def show
    @user_posts = Post.where(:posts => { :user_id => @user.id })
  end
  
  def edit
  end 
  
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :role, :email, :location)
    end
end
