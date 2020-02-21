require 'test_helper'

class SpeciesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get species_index_url
    assert_response :success
  end

  test "should get show" do
    get species_show_url
    assert_response :success
  end

  test "should get new" do
    get species_new_url
    assert_response :success
  end

  test "should get create" do
    get species_create_url
    assert_response :success
  end

end
