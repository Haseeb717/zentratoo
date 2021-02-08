require "application_system_test_case"

class RequestsTest < ApplicationSystemTestCase
  setup do
    @request = requests(:one)
  end

  test "visiting the index" do
    visit requests_url
    assert_selector "h1", text: "Requests"
  end

  test "creating a Request" do
    visit requests_url
    click_on "New Request"

    fill_in "Area", with: @request.area_id
    fill_in "Category", with: @request.category_id
    fill_in "Description", with: @request.description
    fill_in "Document description", with: @request.document_description
    fill_in "Manufacture date", with: @request.manufacture_date
    fill_in "Name", with: @request.name
    fill_in "Region", with: @request.region
    fill_in "Request type", with: @request.request_type
    click_on "Create Request"

    assert_text "Request was successfully created"
    click_on "Back"
  end

  test "updating a Request" do
    visit requests_url
    click_on "Edit", match: :first

    fill_in "Area", with: @request.area_id
    fill_in "Category", with: @request.category_id
    fill_in "Description", with: @request.description
    fill_in "Document description", with: @request.document_description
    fill_in "Manufacture date", with: @request.manufacture_date
    fill_in "Name", with: @request.name
    fill_in "Region", with: @request.region
    fill_in "Request type", with: @request.request_type
    click_on "Update Request"

    assert_text "Request was successfully updated"
    click_on "Back"
  end

  test "destroying a Request" do
    visit requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Request was successfully destroyed"
  end
end
