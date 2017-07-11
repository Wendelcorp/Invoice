require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  setup do
    @bill = bills(:one)
    @item = items(:one)
  end

  test "should get index" do
    get :index, params: { bill_id: @bill }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { bill_id: @bill }
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post :create, params: { bill_id: @bill, item: @item.attributes }
    end

    assert_redirected_to bill_item_path(@bill, Item.last)
  end

  test "should show item" do
    get :show, params: { bill_id: @bill, id: @item }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { bill_id: @bill, id: @item }
    assert_response :success
  end

  test "should update item" do
    put :update, params: { bill_id: @bill, id: @item, item: @item.attributes }
    assert_redirected_to bill_item_path(@bill, Item.last)
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, params: { bill_id: @bill, id: @item }
    end

    assert_redirected_to bill_items_path(@bill)
  end
end
