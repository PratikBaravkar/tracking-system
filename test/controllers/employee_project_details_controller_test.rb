require "test_helper"

class EmployeeProjectDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_project_detail = employee_project_details(:one)
  end

  test "should get index" do
    get employee_project_details_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_project_detail_url
    assert_response :success
  end

  test "should create employee_project_detail" do
    assert_difference('EmployeeProjectDetail.count') do
      post employee_project_details_url, params: { employee_project_detail: { employee: @employee_project_detail.employee, project_detail: @employee_project_detail.project_detail } }
    end

    assert_redirected_to employee_project_detail_url(EmployeeProjectDetail.last)
  end

  test "should show employee_project_detail" do
    get employee_project_detail_url(@employee_project_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_project_detail_url(@employee_project_detail)
    assert_response :success
  end

  test "should update employee_project_detail" do
    patch employee_project_detail_url(@employee_project_detail), params: { employee_project_detail: { employee: @employee_project_detail.employee, project_detail: @employee_project_detail.project_detail } }
    assert_redirected_to employee_project_detail_url(@employee_project_detail)
  end

  test "should destroy employee_project_detail" do
    assert_difference('EmployeeProjectDetail.count', -1) do
      delete employee_project_detail_url(@employee_project_detail)
    end

    assert_redirected_to employee_project_details_url
  end
end
