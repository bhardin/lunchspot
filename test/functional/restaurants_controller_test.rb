require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Restaurant.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Restaurant.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Restaurant.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to restaurant_url(assigns(:restaurant))
  end

  def test_edit
    get :edit, :id => Restaurant.first
    assert_template 'edit'
  end

  def test_update_invalid
    Restaurant.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Restaurant.first
    assert_template 'edit'
  end

  def test_update_valid
    Restaurant.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Restaurant.first
    assert_redirected_to restaurant_url(assigns(:restaurant))
  end

  def test_destroy
    restaurant = Restaurant.first
    delete :destroy, :id => restaurant
    assert_redirected_to restaurants_url
    assert !Restaurant.exists?(restaurant.id)
  end
end
