require 'test_helper'

class AdminkasControllerTest < ActionController::TestCase
  setup do
    @adminka = adminkas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adminkas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adminka" do
    assert_difference('Adminka.count') do
      post :create, adminka: { body: @adminka.body, title: @adminka.title }
    end

    assert_redirected_to adminka_path(assigns(:adminka))
  end

  test "should show adminka" do
    get :show, id: @adminka
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adminka
    assert_response :success
  end

  test "should update adminka" do
    patch :update, id: @adminka, adminka: { body: @adminka.body, title: @adminka.title }
    assert_redirected_to adminka_path(assigns(:adminka))
  end

  test "should destroy adminka" do
    assert_difference('Adminka.count', -1) do
      delete :destroy, id: @adminka
    end

    assert_redirected_to adminkas_path
  end
end
