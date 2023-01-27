require 'test_helper'

class PostMapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_map = post_maps(:one)
  end

  test "should get index" do
    get post_maps_url
    assert_response :success
  end

  test "should get new" do
    get new_post_map_url
    assert_response :success
  end

  test "should create post_map" do
    assert_difference('PostMap.count') do
      post post_maps_url, params: { post_map: { address: @post_map.address, latitude: @post_map.latitude, longitude: @post_map.longitude } }
    end

    assert_redirected_to post_map_url(PostMap.last)
  end

  test "should show post_map" do
    get post_map_url(@post_map)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_map_url(@post_map)
    assert_response :success
  end

  test "should update post_map" do
    patch post_map_url(@post_map), params: { post_map: { address: @post_map.address, latitude: @post_map.latitude, longitude: @post_map.longitude } }
    assert_redirected_to post_map_url(@post_map)
  end

  test "should destroy post_map" do
    assert_difference('PostMap.count', -1) do
      delete post_map_url(@post_map)
    end

    assert_redirected_to post_maps_url
  end
end
