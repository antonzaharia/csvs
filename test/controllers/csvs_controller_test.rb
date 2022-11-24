require "test_helper"

class CsvsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get csvs_index_url
    assert_response :success
  end

  test "should get create" do
    get csvs_create_url
    assert_response :success
  end

  test "should get show" do
    get csvs_show_url
    assert_response :success
  end
end
