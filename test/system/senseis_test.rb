require "application_system_test_case"

class SenseisTest < ApplicationSystemTestCase
  setup do
    @sensei = senseis(:one)
  end

  test "visiting the index" do
    visit senseis_url
    assert_selector "h1", text: "Senseis"
  end

  test "should create sensei" do
    visit senseis_url
    click_on "New sensei"

    fill_in "Bio", with: @sensei.bio
    fill_in "First name", with: @sensei.first_name
    fill_in "Last name", with: @sensei.last_name
    click_on "Create Sensei"

    assert_text "Sensei was successfully created"
    click_on "Back"
  end

  test "should update Sensei" do
    visit sensei_url(@sensei)
    click_on "Edit this sensei", match: :first

    fill_in "Bio", with: @sensei.bio
    fill_in "First name", with: @sensei.first_name
    fill_in "Last name", with: @sensei.last_name
    click_on "Update Sensei"

    assert_text "Sensei was successfully updated"
    click_on "Back"
  end

  test "should destroy Sensei" do
    visit sensei_url(@sensei)
    click_on "Destroy this sensei", match: :first

    assert_text "Sensei was successfully destroyed"
  end
end
