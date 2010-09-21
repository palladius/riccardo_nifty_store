class AjaxPostsController < ApplicationController
  def index
    @ajax_posts = AjaxPost.all
  end
  
  def show
    @ajax_post = AjaxPost.find(params[:id])
  end
  
  def new
    @ajax_post = AjaxPost.new
    respond_to do |wants|
      wants.html

      wants.js { render :action => "dialog" }

    end
    
  end
  
  def create
    @ajax_post = AjaxPost.new(params[:ajax_post])
    respond_to do |wants|
      if @ajax_post.save
        wants.html do
          flash[:notice] = "Successfully created ajax post."
          redirect_to @ajax_post
        end

        wants.js

      else
        wants.html { render :action => 'new' }

        wants.js { render :action => 'error' }
        
      end
    end
  end
  
  def edit
    @ajax_post = AjaxPost.find(params[:id])
    respond_to do |wants|
      wants.html

      wants.js { render :action => "dialog" }

    end

  end
  
  def update
    @ajax_post = AjaxPost.find(params[:id])
    respond_to do |wants|
      if @ajax_post.update_attributes(params[:ajax_post])
        wants.html do
          flash[:notice] = "Successfully updated ajax post."
          redirect_to @ajax_post
        end

        wants.js

      else
        wants.html { render :action => 'edit' }

        wants.js { render :action => 'error' }

      end
    end
  end
  
  def destroy
    @ajax_post = AjaxPost.find(params[:id])
    @ajax_post.destroy
    flash[:notice] = "Successfully removed ajax post."
    redirect_to ajax_posts_url
  end
end
