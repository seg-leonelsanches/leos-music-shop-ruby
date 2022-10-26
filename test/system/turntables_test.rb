require "application_system_test_case"

class TurntablesTest < ApplicationSystemTestCase
  setup do
    @turntable = turntables(:one)
  end

  test "visiting the index" do
    visit turntables_url
    assert_selector "h1", text: "Turntables"
  end

  test "should create turntable" do
    visit turntables_url
    click_on "New turntable"

    fill_in "Main image", with: @turntable.main_image
    fill_in "Manufacturer", with: @turntable.manufacturer
    fill_in "Model", with: @turntable.model
    fill_in "Price", with: @turntable.price
    click_on "Create Turntable"

    assert_text "Turntable was successfully created"
    click_on "Back"
  end

  test "should update Turntable" do
    visit turntable_url(@turntable)
    click_on "Edit this turntable", match: :first

    fill_in "Main image", with: @turntable.main_image
    fill_in "Manufacturer", with: @turntable.manufacturer
    fill_in "Model", with: @turntable.model
    fill_in "Price", with: @turntable.price
    click_on "Update Turntable"

    assert_text "Turntable was successfully updated"
    click_on "Back"
  end

  test "should destroy Turntable" do
    visit turntable_url(@turntable)
    click_on "Destroy this turntable", match: :first

    assert_text "Turntable was successfully destroyed"
  end
end
