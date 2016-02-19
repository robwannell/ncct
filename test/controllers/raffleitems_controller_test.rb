require 'test_helper'

class RaffleitemsControllerTest < ActionController::TestCase
  setup do
    @raffleitem = raffleitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:raffleitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create raffleitem" do
    assert_difference('Raffleitem.count') do
      post :create, raffleitem: { name: @raffleitem.name, raffle_id: @raffleitem.raffle_id, ticket: @raffleitem.ticket }
    end

    assert_redirected_to raffleitem_path(assigns(:raffleitem))
  end

  test "should show raffleitem" do
    get :show, id: @raffleitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @raffleitem
    assert_response :success
  end

  test "should update raffleitem" do
    patch :update, id: @raffleitem, raffleitem: { name: @raffleitem.name, raffle_id: @raffleitem.raffle_id, ticket: @raffleitem.ticket }
    assert_redirected_to raffleitem_path(assigns(:raffleitem))
  end

  test "should destroy raffleitem" do
    assert_difference('Raffleitem.count', -1) do
      delete :destroy, id: @raffleitem
    end

    assert_redirected_to raffleitems_path
  end
end
