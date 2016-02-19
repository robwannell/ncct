require 'test_helper'

class RaffleControllerTest < ActionController::TestCase
  setup do
    @raffle = raffle(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:raffle)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create raffle" do
    assert_difference('Raffle.count') do
      post :create, raffle: { date: @raffle.date, description: @raffle.description, name: @raffle.name }
    end

    assert_redirected_to raffle_path(assigns(:raffle))
  end

  test "should show raffle" do
    get :show, id: @raffle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @raffle
    assert_response :success
  end

  test "should update raffle" do
    patch :update, id: @raffle, raffle: { date: @raffle.date, description: @raffle.description, name: @raffle.name }
    assert_redirected_to raffle_path(assigns(:raffle))
  end

  test "should destroy raffle" do
    assert_difference('Raffle.count', -1) do
      delete :destroy, id: @raffle
    end

    assert_redirected_to raffle_index_path
  end
end
