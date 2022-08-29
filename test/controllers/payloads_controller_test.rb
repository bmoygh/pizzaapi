require "test_helper"

class PayloadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payload = payloads(:one)
  end

  payload1 = {"uuid": "8lmOQUreEeeyj2n4OIYEmA",
    "order_number": "505600836761409",
    "is_test": false,
    "status": "UNKNOWN"}

  test "should get index" do
    get payloads_url, as: :json
    assert_response :success
  end

  test "should create payload" do
    assert_difference('Payload.count') do
      post payloads_url, params: { payload: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show payload" do
    get payload_url(@payload), as: :json
    assert_response :success
  end

  test "should update payload" do
    patch payload_url(@payload), params: { payload: {  } }, as: :json
    assert_response 200
  end

  test "should destroy payload" do
    assert_difference('Payload.count', -1) do
      delete payload_url(@payload), as: :json
    end

    assert_response 204
  end
end
