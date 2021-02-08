require 'test_helper'

class RequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get requests_url
    assert_response :success
  end

  test "should get new" do
    get new_request_url
    assert_response :success
  end

  test "should create request" do
    assert_difference('Request.count') do
      post requests_url, params: { request: { area_id: @request.area_id, category_id: @request.category_id, description: @request.description, document_description: @request.document_description, manufacture_date: @request.manufacture_date, name: @request.name, region: @request.region, request_type: @request.request_type } }
    end

    assert_redirected_to request_url(Request.last)
  end

  test "should show request" do
    get request_url(@request)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_url(@request)
    assert_response :success
  end

  test "should update request" do
    patch request_url(@request), params: { request: { area_id: @request.area_id, category_id: @request.category_id, description: @request.description, document_description: @request.document_description, manufacture_date: @request.manufacture_date, name: @request.name, region: @request.region, request_type: @request.request_type } }
    assert_redirected_to request_url(@request)
  end

  test "should destroy request" do
    assert_difference('Request.count', -1) do
      delete request_url(@request)
    end

    assert_redirected_to requests_url
  end
end
