class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Thank you for signing up! You are now logged in."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated user (TODOIMP verify u can only update yourself unless admin!)."
      redirect_to @user
    else
      render :action => 'edit'
    end
  end
  
  # def destroy
  #    @post = Post.find(params[:id])
  #    @post.destroy
  #    flash[:notice] = "Successfully destroyed post."
  #    redirect_to posts_url
  #  end
end
