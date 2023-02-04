class Employee < ApplicationRecord
  has_many :employee_project_details
  has_many :projects, through: :employee_project_details
end
