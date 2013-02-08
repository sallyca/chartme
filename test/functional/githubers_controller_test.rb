require 'test_helper'

class GithubersControllerTest < ActionController::TestCase
  setup do
    @githuber = githubers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:githubers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create githuber" do
    assert_difference('Githuber.count') do
      post :create, githuber: { contributions: @githuber.contributions, country: @githuber.country, followers: @githuber.followers, interests: @githuber.interests, language: @githuber.language, link: @githuber.link, location: @githuber.location, name: @githuber.name, reps: @githuber.reps, username: @githuber.username }
    end

    assert_redirected_to githuber_path(assigns(:githuber))
  end

  test "should show githuber" do
    get :show, id: @githuber
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @githuber
    assert_response :success
  end

  test "should update githuber" do
    put :update, id: @githuber, githuber: { contributions: @githuber.contributions, country: @githuber.country, followers: @githuber.followers, interests: @githuber.interests, language: @githuber.language, link: @githuber.link, location: @githuber.location, name: @githuber.name, reps: @githuber.reps, username: @githuber.username }
    assert_redirected_to githuber_path(assigns(:githuber))
  end

  test "should destroy githuber" do
    assert_difference('Githuber.count', -1) do
      delete :destroy, id: @githuber
    end

    assert_redirected_to githubers_path
  end
end
