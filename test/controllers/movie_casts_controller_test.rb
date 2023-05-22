require "test_helper"

class MovieCastsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_cast = movie_casts(:one)
  end

  test "should get index" do
    get movie_casts_url, as: :json
    assert_response :success
  end

  test "should create movie_cast" do
    assert_difference("MovieCast.count") do
      post movie_casts_url, params: { movie_cast: { actor_id: @movie_cast.actor_id, movie_id: @movie_cast.movie_id } }, as: :json
    end

    assert_response :created
  end

  test "should show movie_cast" do
    get movie_cast_url(@movie_cast), as: :json
    assert_response :success
  end

  test "should update movie_cast" do
    patch movie_cast_url(@movie_cast), params: { movie_cast: { actor_id: @movie_cast.actor_id, movie_id: @movie_cast.movie_id } }, as: :json
    assert_response :success
  end

  test "should destroy movie_cast" do
    assert_difference("MovieCast.count", -1) do
      delete movie_cast_url(@movie_cast), as: :json
    end

    assert_response :no_content
  end
end
