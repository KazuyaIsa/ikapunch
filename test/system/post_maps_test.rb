require "application_system_test_case"

class PostMapsTest < ApplicationSystemTestCase
  setup do
    @post_map = post_maps(:one)
  end

  test "visiting the index" do
    visit post_maps_url
    assert_selector "h1", text: "Post Maps"
  end

  test "creating a Post map" do
    visit post_maps_url
    click_on "New Post Map"

    fill_in "Address", with: @post_map.address
    fill_in "Latitude", with: @post_map.latitude
    fill_in "Longitude", with: @post_map.longitude
    click_on "Create Post map"

    assert_text "Post map was successfully created"
    click_on "Back"
  end

  test "updating a Post map" do
    visit post_maps_url
    click_on "Edit", match: :first

    fill_in "Address", with: @post_map.address
    fill_in "Latitude", with: @post_map.latitude
    fill_in "Longitude", with: @post_map.longitude
    click_on "Update Post map"

    assert_text "Post map was successfully updated"
    click_on "Back"
  end

  test "destroying a Post map" do
    visit post_maps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post map was successfully destroyed"
  end
end
