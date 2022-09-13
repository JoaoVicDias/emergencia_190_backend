require "test_helper"

class EmergenciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emergency = emergencies(:one)
  end

  test "should get index" do
    get emergencies_url, as: :json
    assert_response :success
  end

  test "should create emergency" do
    assert_difference("Emergency.count") do
      post emergencies_url, params: { emergency: { address: @emergency.address, description: @emergency.description, emergency_type_id: @emergency.emergency_type_id, status_id: @emergency.status_id, user_id: @emergency.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show emergency" do
    get emergency_url(@emergency), as: :json
    assert_response :success
  end

  test "should update emergency" do
    patch emergency_url(@emergency), params: { emergency: { address: @emergency.address, description: @emergency.description, emergency_type_id: @emergency.emergency_type_id, status_id: @emergency.status_id, user_id: @emergency.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy emergency" do
    assert_difference("Emergency.count", -1) do
      delete emergency_url(@emergency), as: :json
    end

    assert_response :no_content
  end
end
