require "test_helper"

class PoliceControllerTest < ActionDispatch::IntegrationTest
  setup do
    @police = police(:one)
  end

  test "should get index" do
    get police_index_url, as: :json
    assert_response :success
  end

  test "should create police" do
    assert_difference("Police.count") do
      post police_index_url, params: { police: { email: @police.email, name: @police.name, password: @police.password } }, as: :json
    end

    assert_response :created
  end

  test "should show police" do
    get police_url(@police), as: :json
    assert_response :success
  end

  test "should update police" do
    patch police_url(@police), params: { police: { email: @police.email, name: @police.name, password: @police.password } }, as: :json
    assert_response :success
  end

  test "should destroy police" do
    assert_difference("Police.count", -1) do
      delete police_url(@police), as: :json
    end

    assert_response :no_content
  end
end
