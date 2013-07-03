require 'test_helper'

class Web::Admin::LecturesControllerTest < ActionController::TestCase
  setup do
    @admin = create :admin_user
    sign_in(@admin)
    @lecture = create :lecture
    # by defult FactoryGirl is ignore associaton for attributes_for
    @attrs = attributes_for :lecture, user_id: @admin.id
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test 'should lecture create' do
    post :create, lecture: @attrs

    assert_response :redirect

    lecture = Lecture.where(@attrs.extract(:name)).first
    assert lecture
  end

  test 'should get edit' do
    get :edit, id: @lecture.id
    assert_response :success
  end

  test 'should put update' do
    put :update, id: @lecture.id, lecture: @attrs

    assert_response :redirect

    lecture = Lecture.where(@attrs.extract(:name)).first
    assert lecture
  end
end
