require 'test_helper'

class EntrepeneursControllerTest < ActionController::TestCase
  setup do
    @entrepeneur = entrepeneurs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entrepeneurs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entrepeneur" do
    assert_difference('Entrepeneur.count') do
      post :create, entrepeneur: @entrepeneur.attributes
    end

    assert_redirected_to entrepeneur_path(assigns(:entrepeneur))
  end

  test "should show entrepeneur" do
    get :show, id: @entrepeneur.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entrepeneur.to_param
    assert_response :success
  end

  test "should update entrepeneur" do
    put :update, id: @entrepeneur.to_param, entrepeneur: @entrepeneur.attributes
    assert_redirected_to entrepeneur_path(assigns(:entrepeneur))
  end

  test "should destroy entrepeneur" do
    assert_difference('Entrepeneur.count', -1) do
      delete :destroy, id: @entrepeneur.to_param
    end

    assert_redirected_to entrepeneurs_path
  end
end
