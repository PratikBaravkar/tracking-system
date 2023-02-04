require "application_system_test_case"

class ProjectDetailsTest < ApplicationSystemTestCase
  setup do
    @project_detail = project_details(:one)
  end

  test "visiting the index" do
    visit project_details_url
    assert_selector "h1", text: "Project Details"
  end

  test "creating a Project detail" do
    visit project_details_url
    click_on "New Project Detail"

    fill_in "Name", with: @project_detail.name
    click_on "Create Project detail"

    assert_text "Project detail was successfully created"
    click_on "Back"
  end

  test "updating a Project detail" do
    visit project_details_url
    click_on "Edit", match: :first

    fill_in "Name", with: @project_detail.name
    click_on "Update Project detail"

    assert_text "Project detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Project detail" do
    visit project_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project detail was successfully destroyed"
  end
end
