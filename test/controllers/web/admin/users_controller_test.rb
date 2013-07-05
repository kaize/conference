require 'test_helper'

class Web::Admin::UsersControllerTest < ActionController::TestCase
  setup do
    user = create :admin_user
    sign_in user
    @attrs = attributes_for :user
    @user = create :user
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    post :create, user: @attrs

    assert_response :redirect

    user = User.find_by_email @attrs[:email] 
    assert user
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should get update" do
    put :update, id: @user.id, user: @attrs

    assert_response :redirect

    user = User.find_by_email @attrs[:email] 
    assert user
  end
end
