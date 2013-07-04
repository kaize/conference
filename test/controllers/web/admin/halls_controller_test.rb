require 'test_helper'

class Web::Admin::HallsControllerTest < ActionController::TestCase
  setup do
    @admin = create :admin_user
    sign_in(@admin)
    @hall = create :hall
    @attrs = attributes_for :hall
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test 'should hall create' do
    post :create, hall: @attrs

    assert_response :redirect

    hall = Hall.where(@attrs.extract(:name)).first
    assert hall
  end

  test 'should get edit' do
    get :edit, id: @hall.id
    assert_response :success
  end

  test 'should put update' do
    put :update, id: @hall.id, hall: @attrs

    assert_response :redirect

    hall = Hall.where(@attrs.extract(:name)).first
    assert hall
  end
end
