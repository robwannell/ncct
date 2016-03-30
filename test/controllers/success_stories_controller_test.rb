require 'test_helper'

class SuccessStoriesControllerTest < ActionController::TestCase
  setup do
    @success_story = success_stories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:success_stories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create success_story" do
    assert_difference('SuccessStory.count') do
      post :create, success_story: { content: @success_story.content, name: @success_story.name, ranking: @success_story.ranking, title: @success_story.title }
    end

    assert_redirected_to success_story_path(assigns(:success_story))
  end

  test "should show success_story" do
    get :show, id: @success_story
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @success_story
    assert_response :success
  end

  test "should update success_story" do
    patch :update, id: @success_story, success_story: { content: @success_story.content, name: @success_story.name, ranking: @success_story.ranking, title: @success_story.title }
    assert_redirected_to success_story_path(assigns(:success_story))
  end

  test "should destroy success_story" do
    assert_difference('SuccessStory.count', -1) do
      delete :destroy, id: @success_story
    end

    assert_redirected_to success_stories_path
  end
end
