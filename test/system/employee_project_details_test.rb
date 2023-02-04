require "application_system_test_case"

class EmployeeProjectDetailsTest < ApplicationSystemTestCase
  setup do
    @employee_project_detail = employee_project_details(:one)
  end

  test "visiting the index" do
    visit employee_project_details_url
    assert_selector "h1", text: "Employee Project Details"
  end

  test "creating a Employee project detail" do
    visit employee_project_details_url
    click_on "New Employee Project Detail"

    fill_in "Employee", with: @employee_project_detail.employee
    fill_in "Project detail", with: @employee_project_detail.project_detail
    click_on "Create Employee project detail"

    assert_text "Employee project detail was successfully created"
    click_on "Back"
  end

  test "updating a Employee project detail" do
    visit employee_project_details_url
    click_on "Edit", match: :first

    fill_in "Employee", with: @employee_project_detail.employee
    fill_in "Project detail", with: @employee_project_detail.project_detail
    click_on "Update Employee project detail"

    assert_text "Employee project detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee project detail" do
    visit employee_project_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee project detail was successfully destroyed"
  end
end
