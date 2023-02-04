class EmployeeProjectDetail < ApplicationRecord
  belongs_to :employee
  belongs_to :project_detail
end
