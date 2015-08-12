require 'test_helper'

class BoardmembersControllerTest < ActionController::TestCase
  setup do
    @boardmember = boardmembers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boardmembers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boardmember" do
    assert_difference('Boardmember.count') do
      post :create, boardmember: { body: @boardmember.body, name: @boardmember.name, rank: @boardmember.rank, title: @boardmember.title }
    end

    assert_redirected_to boardmember_path(assigns(:boardmember))
  end

  test "should show boardmember" do
    get :show, id: @boardmember
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boardmember
    assert_response :success
  end

  test "should update boardmember" do
    patch :update, id: @boardmember, boardmember: { body: @boardmember.body, name: @boardmember.name, rank: @boardmember.rank, title: @boardmember.title }
    assert_redirected_to boardmember_path(assigns(:boardmember))
  end

  test "should destroy boardmember" do
    assert_difference('Boardmember.count', -1) do
      delete :destroy, id: @boardmember
    end

    assert_redirected_to boardmembers_path
  end
end
