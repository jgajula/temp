require 'test_helper'

class GiversControllerTest < ActionController::TestCase
  setup do
    @giver = givers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:givers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create giver" do
    assert_difference('Giver.count') do
      post :create, giver: { comment: @giver.comment, name: @giver.name, product_id: @giver.product_id, session_id: @giver.session_id, taker_id: @giver.taker_id, user_id: @giver.user_id }
    end

    assert_redirected_to giver_path(assigns(:giver))
  end

  test "should show giver" do
    get :show, id: @giver
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @giver
    assert_response :success
  end

  test "should update giver" do
    put :update, id: @giver, giver: { comment: @giver.comment, name: @giver.name, product_id: @giver.product_id, session_id: @giver.session_id, taker_id: @giver.taker_id, user_id: @giver.user_id }
    assert_redirected_to giver_path(assigns(:giver))
  end

  test "should destroy giver" do
    assert_difference('Giver.count', -1) do
      delete :destroy, id: @giver
    end

    assert_redirected_to givers_path
  end
end
