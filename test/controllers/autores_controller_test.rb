require 'test_helper'

class AutoresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get autores_index_url
    assert_response :success
  end

  test "should get new" do
    get autores_new_url
    assert_response :success
  end

  test "should get show" do
    get autores_show_url
    assert_response :success
  end

  test "should get edit" do
    get autores_edit_url
    assert_response :success
  end

end
