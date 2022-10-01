require "test_helper"

class UersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get uers_new_url
    assert_response :success
  end

  test "should get index" do
    get uers_index_url
    assert_response :success
  end

  test "should get show" do
    get uers_show_url
    assert_response :success
  end

  test "should get edit" do
    get uers_edit_url
    assert_response :success
  end
end
