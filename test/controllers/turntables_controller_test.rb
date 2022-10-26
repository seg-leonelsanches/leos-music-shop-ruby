require "test_helper"

class TurntablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @turntable = turntables(:one)
  end

  test "should get index" do
    get turntables_url
    assert_response :success
  end

  test "should get new" do
    get new_turntable_url
    assert_response :success
  end

  test "should create turntable" do
    assert_difference("Turntable.count") do
      post turntables_url, params: { turntable: { main_image: @turntable.main_image, manufacturer: @turntable.manufacturer, model: @turntable.model, price: @turntable.price } }
    end

    assert_redirected_to turntable_url(Turntable.last)
  end

  test "should show turntable" do
    get turntable_url(@turntable)
    assert_response :success
  end

  test "should get edit" do
    get edit_turntable_url(@turntable)
    assert_response :success
  end

  test "should update turntable" do
    patch turntable_url(@turntable), params: { turntable: { main_image: @turntable.main_image, manufacturer: @turntable.manufacturer, model: @turntable.model, price: @turntable.price } }
    assert_redirected_to turntable_url(@turntable)
  end

  test "should destroy turntable" do
    assert_difference("Turntable.count", -1) do
      delete turntable_url(@turntable)
    end

    assert_redirected_to turntables_url
  end
end
