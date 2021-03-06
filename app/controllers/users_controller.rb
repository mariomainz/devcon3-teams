class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @user_posts = Post.where(posts: { user_id: @user.id }).paginate(:page => params[:latest_posts], :per_page => 10)
    @user_stats = @user.status.order('created_at DESC').paginate(:page => params[:latest_stats], :per_page => 5)
  end
  
  def edit
    @user = User.find(params[:id])
  end 
  
  def update
    @user = User.find(params[:id])

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

  def user_params
    params.require(:user).permit(:first_name, :last_name, :role, :email, :location)
  end
end
