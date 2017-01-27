require 'test_helper'

class FederalsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get federals_new_url
    assert_response :success
  end

  test "should get create" do
    get federals_create_url
    assert_response :success
  end

  test "should get update" do
    get federals_update_url
    assert_response :success
  end

  test "should get edit" do
    get federals_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get federals_destroy_url
    assert_response :success
  end

  test "should get index" do
    get federals_index_url
    assert_response :success
  end

  test "should get show" do
    get federals_show_url
    assert_response :success
  end

end
