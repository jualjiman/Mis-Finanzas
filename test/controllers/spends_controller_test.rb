require 'test_helper'

class SpendsControllerTest < ActionController::TestCase
  setup do
    @spend = spends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spend" do
    assert_difference('Spend.count') do
      post :create, spend: { amount: @spend.amount, category_id: @spend.category_id, date: @spend.date, subject: @spend.subject }
    end

    assert_redirected_to spend_path(assigns(:spend))
  end

  test "should show spend" do
    get :show, id: @spend
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spend
    assert_response :success
  end

  test "should update spend" do
    patch :update, id: @spend, spend: { amount: @spend.amount, category_id: @spend.category_id, date: @spend.date, subject: @spend.subject }
    assert_redirected_to spend_path(assigns(:spend))
  end

  test "should destroy spend" do
    assert_difference('Spend.count', -1) do
      delete :destroy, id: @spend
    end

    assert_redirected_to spends_path
  end
end
