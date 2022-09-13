require "test_helper"

class EmergencyTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emergency_type = emergency_types(:one)
  end

  test "should get index" do
    get emergency_types_url, as: :json
    assert_response :success
  end

  test "should create emergency_type" do
    assert_difference("EmergencyType.count") do
      post emergency_types_url, params: { emergency_type: { name: @emergency_type.name } }, as: :json
    end

    assert_response :created
  end

  test "should show emergency_type" do
    get emergency_type_url(@emergency_type), as: :json
    assert_response :success
  end

  test "should update emergency_type" do
    patch emergency_type_url(@emergency_type), params: { emergency_type: { name: @emergency_type.name } }, as: :json
    assert_response :success
  end

  test "should destroy emergency_type" do
    assert_difference("EmergencyType.count", -1) do
      delete emergency_type_url(@emergency_type), as: :json
    end

    assert_response :no_content
  end
end
