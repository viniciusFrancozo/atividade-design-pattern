require "test_helper"

class DirectorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @director = directors(:one)
  end

  test "should get index" do
    get directors_url, as: :json
    assert_response :success
  end

  test "should create director" do
    assert_difference("Director.count") do
      post directors_url, params: { director: { age: @director.age, name: @director.name } }, as: :json
    end

    assert_response :created
  end

  test "should show director" do
    get director_url(@director), as: :json
    assert_response :success
  end

  test "should update director" do
    patch director_url(@director), params: { director: { age: @director.age, name: @director.name } }, as: :json
    assert_response :success
  end

  test "should destroy director" do
    assert_difference("Director.count", -1) do
      delete director_url(@director), as: :json
    end

    assert_response :no_content
  end
end
