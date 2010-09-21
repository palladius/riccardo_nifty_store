require 'test_helper'

class AjaxPostsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => AjaxPost.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    AjaxPost.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    AjaxPost.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to ajax_post_url(assigns(:ajax_post))
  end
  
  def test_edit
    get :edit, :id => AjaxPost.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    AjaxPost.any_instance.stubs(:valid?).returns(false)
    put :update, :id => AjaxPost.first
    assert_template 'edit'
  end
  
  def test_update_valid
    AjaxPost.any_instance.stubs(:valid?).returns(true)
    put :update, :id => AjaxPost.first
    assert_redirected_to ajax_post_url(assigns(:ajax_post))
  end
  
  def test_destroy
    ajax_post = AjaxPost.first
    delete :destroy, :id => ajax_post
    assert_redirected_to ajax_posts_url
    assert !AjaxPost.exists?(ajax_post.id)
  end
end
