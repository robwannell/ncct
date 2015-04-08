require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get careers" do
    get :careers
    assert_response :success
  end

  test "should get curriculum" do
    get :curriculum
    assert_response :success
  end

  test "should get success" do
    get :success
    assert_response :success
  end

end
