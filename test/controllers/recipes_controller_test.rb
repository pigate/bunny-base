require 'test_helper'

class RecipesControllerTest < ActionController::TestCase
  test "should get ingredients:string" do
    get :ingredients:string
    assert_response :success
  end

  test "should get steps:string" do
    get :steps:string
    assert_response :success
  end

  test "should get author_id:integer" do
    get :author_id:integer
  assert_response :success

  test "should get intro:string" do
    get :intro:string
  assert_response :success
end
