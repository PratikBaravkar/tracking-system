class ProjectDetail < ApplicationRecord
  has_many :employee_project_details
  has_many :employees, through: :employee_project_details
end
