require "test_helper"

class CategoryMenusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get category_menus_index_url
    assert_response :success
  end

  test "should get show" do
    get category_menus_show_url
    assert_response :success
  end

  test "should get new" do
    get category_menus_new_url
    assert_response :success
  end

  test "should get edit" do
    get category_menus_edit_url
    assert_response :success
  end
end
